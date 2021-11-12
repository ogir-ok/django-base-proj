from django.core.management.base import BaseCommand
from apps.movies.models import *
import csv


class Command(BaseCommand):
    help = 'Use this command to upload data to your database'

    def handle(self, *args, **options):
        path = options['file']
        with open(path, 'r') as tsvfile:
            tsvreader = csv.reader(tsvfile, delimiter='\t')
            next(tsvfile)
            for line in tsvreader:
                movie, created = Movie.objects.get_or_create(imdb_id=line[0])
                person, created = Person.objects.get_or_create(imdb_id=line[2])
                person_movie, created = PersonMovie.objects.get_or_create(movie_id=movie, person_id=person)             # person_movie.movie_id = line[0]
                person_movie.order = int(line[1])
                person_movie.category = line[3]
                person_movie.job = line[4]
                if line[-1] == '\\N':
                    person_movie.characters = list(line[-1].split(','))
                else:
                    person_movie.characters = list(line[-1][2:-2].split(','))
                person_movie.save()

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            required=True,
            help='Set absolute path to data file .tsv',
        )
