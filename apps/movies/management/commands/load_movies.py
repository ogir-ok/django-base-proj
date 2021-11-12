import csv
import os

from django.core.management.base import BaseCommand

from apps.movies.models import Movie


# Creating A Class \"Command"/ that extends BaseCommand
class Command(BaseCommand):
    help = 'This Command Will Display For You All The Movies That Written In File.'

    def add_arguments(self, parser):
        parser.add_argument('--file')

    def handle(self, *args, **options):
        try:
            with open(options['title.basics.csv']) as csv_file:
                csv_reader = csv.DictReader(csv_file, delimeter='\n', quotechar='|')

                for line in csv_reader:

                    movie, created = Movie.objects.get_or_create(imdb=line['tconst'])
                    movie.title_type = line['ordering']
                    movie.name = line['primaryTitle']
                    movie.is_adult = line.get('isAdult') != 0
                    movie.genres = [g.lower() for g in line['genres'].split(',')]
                    movie.save()

        except FileNotFoundError:
            print('THE FILE NOT FOUND!!!')
