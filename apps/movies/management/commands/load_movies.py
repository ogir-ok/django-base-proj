import sys
from django.core.management.base import BaseCommand
from apps.movies.models import Movie
import csv
from datetime import date
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
            for movie_data in tsvreader:
                if movie_data[1] not in ['movie', 'short']:
                    continue
                movie, created = Movie.objects.get_or_create(imdb_id=movie_data[0])
                movie.title_type = movie_data[1]
                movie.name = movie_data[2]
                movie.is_adult = movie_data[4] != '0'
                if movie_data[5] != '\\N':
                    movie.year = date(int(movie_data[5]), 1, 1)
                else:
                    movie.year = None
                movie.genres = [el.lower() for el in movie_data[-1].split(',')]
                movie.save()

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            required=True,
            help='Set absolute path to data file .tsv',
        )
