from django.core.management.base import BaseCommand
from apps.movies.models import *
import csv


class Command(BaseCommand):
    help = 'Uploads data to your database'

    def handle(self, *args, **options):
        path = options['path']
        with open(path, 'r') as d:
            tsv = csv.reader(d, delimiter='\t')
            next(d)
            for data in tsv:
                movie, created = Movie.objects.get_or_create(imdb_id=data[0])
                person, created = Person.objects.get_or_create(imdb_id=data[2])
                person_movie, created = PersonMovie.objects.get_or_create(movie_id=movie, person_id=person)             # person_movie.movie_id = line[0]
                person_movie.order = int(data[1])
                person_movie.category = data[3]
                person_movie.job = data[4]
                if data[-1] == '\\N':
                    person_movie.characters = list(data[-1].split(','))
                else:
                    person_movie.characters = list(data[-1][2:-2].split(','))
                person_movie.save()

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            action='store',
            dest='path',
            required=True,
            help='Please put path to .tsv file',
        )
