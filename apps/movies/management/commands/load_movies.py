from django.core.management.base import BaseCommand
from apps.movies.models import Movie
from datetime import date
import csv


class Command(BaseCommand):
    help = 'Uploads data to your database'

    def handle(self, *args, **options):
        path = options['path']
        with open(path, 'r') as d:
            tsv = csv.reader(d, delimiter='\t')
            next(d)
            for data in tsv :
                if data[1] not in ['movie', 'short']:
                    continue
                movie, created = Movie.objects.get_or_create(imdb_id=data[0])
                movie.title_type = data[1]
                movie.name = data[2]
                movie.is_adult = data[4] != '0'
                if data[5] != '\\N':
                    movie.year = date(int(data[5]), 1, 1)
                else:
                    movie.year = date(999, 9, 9)
                movie.genres = [genre for genre in data[7].split(',')]
                movie.save()

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            action='store',
            dest='path',
            required=True,
            help='Please put path to .tsv file',
        )
