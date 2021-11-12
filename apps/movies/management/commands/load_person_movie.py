import json

from  django.core.management.base import BaseCommand
from apps.movies.models import PersonMovie, Movie, Person
import csv


class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument('--file')

    def handle(self, *args, **options):
        with open(options['file']) as csvfile:
            reader = csv.DictReader(csvfile, delimiter='\t', quotechar='|')

            for line in reader:
                next(reader)
                movie,created = Movie.objects.get_or_create(imdb_id=line['tconst'])
                person, created = Person.objects.get_or_create(imdb_id=line['nconst'])
                per_mov,created = PersonMovie.objects.get_or_create(movie_id=movie,person_id=person)
                per_mov.order = line['ordering']
                per_mov.category = line['category']
                per_mov.job = line['job']
                per_mov.characters = line['characters']
                if line['characters'] == '\\N':
                    per_mov.characters = None
                else:
                    per_mov.characters = json.loads(line['characters'])
                per_mov.save()
