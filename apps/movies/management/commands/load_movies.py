import os
import sys

from django.core.management.base import BaseCommand

from apps.movies.models import Movie


class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument('--file', '-f', required=True)
        parser.add_argument('--delimeter', '-d', default='\t')

    def handle(self, *args, **options):
        filepath = options['file']
        delimeter = options['delimeter']

        if not os.path.exists(filepath):
            print(f'No file {filepath} found.')
            sys.exit(1)

        with open(filepath) as f:
            for line in f.readlines():
                movie_data = line.split(delimeter)
                if not movie_data[0].startswith('tt'):
                    continue

                if movie_data[1] not in ['movie', 'short']:
                    continue

                movie_dict = dict(
                    name=movie_data[2],
                    year=f'{movie_data[5]}-01-01',
                    title_type=movie_data[1],
                    is_adult=movie_data[4] == '1',
                    genres=movie_data[-1].split(',')
                )

                movie, created = Movie.objects.get_or_create(imdb_id=movie_data[0],
                                                             defaults=movie_dict)

                Movie.objects.filter(id=movie.id).update(**movie_dict)

                print(movie.id)
                if movie.id > 2000:
                    return
