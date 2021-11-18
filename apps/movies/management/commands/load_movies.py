import gzip
import os
import sys
from django.core.management import BaseCommand
from apps.movies.models import Movie


class Command(BaseCommand):
    help = "Use this command to upload data to your database"

    def add_arguments(self, parser):
        parser.add_argument("--file", '-f', required=True)
        parser.add_argument('--delimeter', '-d', default='\t')

    def handle(self, *args, **options):
        filepath = options['file']
        delimeter = options['delimeter']

        if not os.path.exists(filepath):
            print(f'No file {filepath} found.')
            sys.exit(1)
        with gzip.open(filepath, 'rb') as movie_data_file:
            for line in movie_data_file.readlines():
                movie_data = line.decode('utf8').strip('\n').split(delimeter)
                if not movie_data[0].startswith('tt') or movie_data[1] not in ['movie', 'short']:
                    continue
                movie_dict = dict(
                    name=movie_data[2],
                    year=f'{int(movie_data[5])}-01-01',
                    title_type=movie_data[1],
                    is_adult=movie_data[4] == '1',
                    genres=movie_data[-1].split(',')
                )

                movie, created = Movie.objects.get_or_create(imdb_id=movie_data[0],
                                                             defaults=movie_dict)

                Movie.objects.filter(id=movie.id).update(**movie_dict)

                movie.save()
                print(movie.id)
            movie_data_file.close()
