import sys
from django.core.management.base import BaseCommand
from apps.movies.models import *
import csv
import os


class Command(BaseCommand):
    help = 'Use this command to upload data to your database'

    def handle(self, *args, **options):
        path = options['file']
        if not os.path.exists(path):
            print(f'No file {path} found')
            sys.exit(1)
        with open(path, 'r') as tsvfile:
            tsvreader = csv.reader(tsvfile, delimiter='\t')
            next(tsvfile)
            for person_movie_data in tsvreader:
                try:
                    movie = Movie.objects.get(imdb_id=person_movie_data[0])
                except movie.DoesNotExist:
                    continue
                try:
                    person = Person.objects.get(imdb_id=person_movie_data[2])
                except person.DoesNotExist:
                    continue
                person_movie, created = PersonMovie.objects.get_or_create(movie_id=movie, person_id=person)
                person_movie.order = int(person_movie_data[1])
                person_movie.category = person_movie_data[3]
                person_movie.job = person_movie_data[4]
                if person_movie_data[-1] == '\\N':
                    person_movie.characters = list(person_movie_data[-1].split(','))
                else:
                    person_movie.characters = list(person_movie_data[-1][2:-2].split(','))
                person_movie.save()

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            required=True,
            help='Set absolute path to data file .tsv',
        )
