from django.core.management.base import BaseCommand
from apps.movies.models import Movie
import csv
from datetime import date


class Command(BaseCommand):
    help = 'Use this command to upload data to your database'

    def handle(self, *args, **options):
        path = options['path']
        with open(path, 'r') as tsvfile:
            tsvreader = csv.reader(tsvfile, delimiter='\t')
            next(tsvfile)
            for line in tsvreader:
                if line[1] not in ['movie', 'short']:
                    continue
                movie, created = Movie.objects.get_or_create(imdb_id=line[0])
                movie.title_type = line[1]
                movie.name = line[2]
                movie.is_adult = line[4] != '0'
                if line[5] != '\\N':
                    movie.year = date(int(line[5]), 1, 1)
                else:
                    movie.year = date(1111, 1, 1)
                movie.genres = [el.lower() for el in line[-1].split(',')]
                movie.save()

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            action='store',
            dest='path',
            required=True,
            help='Set absolute path to data file .tsv',
        )
