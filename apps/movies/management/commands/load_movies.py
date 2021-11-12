from django.core.management.base import BaseCommand
from apps.movies.models import Movie
import csv


class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument('--file')

    def handle(self, *args, **options):
        with open(options['file']) as csvfile:
            reader = csv.DictReader(csvfile, delimiter='\t', quotechar='|')

            for line in reader:
                if line['titleType'] not in ['short', 'movie']:
                    continue

                movie, created = Movie.objects.get_or_create(imdb_id=line['tconst'])
                movie.title_type = line['titleType']
                movie.name = line['primaryTitle']
                movie.is_adult = line.get('isAdult') != '0'
                movie.year = line['startYear']
                if line['startYear'] == '\\N':
                    movie.year = None
                else:
                    movie.year = line['startYear'] + '-01-01'
                movie.genres = [g.lower() for g in line['genres'].split(',')]
                movie.save()



