from django.core.management.base import BaseCommand
from apps.movies.models import Movie
from datetime import date
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

        with open(path, 'r') as tsvfile:
            tsvreader = csv.reader(tsvfile, delimiter='\t')
            next(tsvfile)

            for movie_data in tsvreader:
                if movie_data[1] not in ['movie', 'short']:
                    continue

                if movie_data[5] != '\\N':
                    year = date(int(movie_data[5]), 1, 1)
                else:
                    year = None

                movie_dict = dict(
                    title_type=movie_data[1],
                    name=movie_data[2],
                    is_adult=movie_data[4] == '1',
                    year=year,
                    genres=movie_data[-1].split(',')
                )

                movie, created = Movie.objects.get_or_create(imdb_id=movie_data[0],
                                                             defaults=movie_dict)

                Movie.objects.filter(id=movie.id).update(**movie_dict)

                if movie.id > 2000:
                    return

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            required=True,
            help='Set absolute path to data file .tsv',
        )
