import csv
from django.core.management import BaseCommand
from apps.movies.models import Person


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
                    person, created = Person.objects.get_or_create(imdb_id=row[0])
                    person.name = row[1]
                    person.birth_year = row[2]
                    person.death_year = row[3]
                    person.save()
            except Person.DoesNotExist:
                print('Error')
        csv_file.close()
