import csv
from datetime import date
from django.core.management import BaseCommand
from apps.movies.models import Movie


class Command(BaseCommand):
    help = "Use this command to upload data to your database"

    def add_arguments(self, parser):
        parser.add_argument("--file",
                            required=True
                            )

    def handle(self, *args, **options):
        path = options['file']
        with open(path, "r") as csv_file:
            data = csv.reader(csv_file, delimiter=",")
            try:
                for row in data:
                    if row[1] not in ['movie', 'short']:
                        continue
                    movie, created = Movie.objects.get_or_create(imdb_id=row[0])
                    movie.title_type = row[1]
                    movie.name = row[2]
                    movie.is_adult = row[3]
                    if row[4] != '\\N':
                        movie.year = date(int(row[4]), 1, 1)
                    else:
                        movie.year = None
                    movie.genres = row[5]
                    movie.save()
            except:
                print('Error')
        csv_file.close()
