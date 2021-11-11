import csv
from django.core.management import BaseCommand
from apps.movies.models import *


class Command(BaseCommand):
    help = "Loads products and product categories from CSV file."

    def add_arguments(self, parser):
        parser.add_argument("--file",
                            action='store',
                            dest='path',
                            required=True
                            )

    def handle(self, *args, **options):
        path = options['path']
        with open(path, "r") as csv_file:
            data = csv.reader(csv_file, delimiter=",")
            try:
                for row in data:
                    movie, created = Movie.objects.get_or_create(imdb_id=row[0])
                    person, created = Person.objects.get_or_create(imdb_id=row[1])
                    person_movies, created = PersonMovie.objects.get_or_create(movie_id=movie, person_id=person)
                    person_movies.order = row[2]
                    person_movies.category = row[3]
                    person_movies.job = row[4]
                    person_movies.characters = row[5]
                    person_movies.save()
            except:
                print('Error')
            csv_file.close()
