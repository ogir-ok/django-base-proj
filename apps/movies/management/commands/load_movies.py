import csv
from django.core.management import BaseCommand
from apps.movies.models import Movie


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
                    movie.title_type = row[1]
                    movie.name = row[2]
                    movie.is_adult = row[3]
                    movie.year = row[4]
                    movie.genres = row[5]
                    movie.save()
            except Movie.DoesNotExist:
                print('Error')
        csv_file.close()
