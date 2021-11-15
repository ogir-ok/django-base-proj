import csv
from datetime import date
from django.core.management import BaseCommand
from apps.movies.models import Person


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
                    person, created = Person.objects.get_or_create(imdb_id=row[0])
                    person.name = row[1]
                    if row[2] != '\\N':
                        person.birth_year = date(int(row[2]), 1, 1)
                    else:
                        person.birth_year = None
                    if row[3] != '\\N':
                        person.death_year = date(int(row[3]), 1, 1)
                    else:
                        person.death_year = None
                    person.save()
            except:
                print('Error')
        csv_file.close()
