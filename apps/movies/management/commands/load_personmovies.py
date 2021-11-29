from django.core.management.base import BaseCommand
from apps.movies.models import Movie, Person, PersonMovie
import json
from json import JSONDecodeError
import csv
import os
import sys


class Command(BaseCommand):
    help = 'Use this command to upload data to your database'

    def handle(self, *args, **options):
        path = options['file']

        if not os.path.exists(path):
            print(f'No file {path} found')
            sys.exit(1)

        our_movies = Movie.objects.all()
        our_movies_dict = {}
        for el in our_movies:
            our_movies_dict[el.imdb_id] = el.id

        with open(path, 'r') as tsvfile:
            tsvreader = csv.reader(tsvfile, delimiter='\t')
            next(tsvfile)

            for person_movie_data in tsvreader:

                try:
                    movie_id = our_movies_dict[person_movie_data[0]]
                except KeyError:
                    continue

                if person_movie_data[3] == '\\N':
                    person_movie_data[3] = ''

                try:
                    characters = json.loads(person_movie_data[5])
                except JSONDecodeError:
                    characters = []

                person_movie_dict = dict(
                    order=person_movie_data[1],
                    category=person_movie_data[3],
                    job=person_movie_data[4],
                    characters=characters
                )

                person, created = Person.objects.get_or_create(imdb_id=person_movie_data[2])

                person_movie, created = PersonMovie.objects.get_or_create(movie_id=movie_id,
                                                                          person_id=person,
                                                                          defaults=person_movie_dict)

                PersonMovie.objects.filter(id=person_movie.id).update(**person_movie_dict)

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            required=True,
            help='Set absolute path to data file .tsv',
        )
