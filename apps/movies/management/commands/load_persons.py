import csv
from django.core.management import BaseCommand
from django.utils import timezone
from apps.movies.models import Person


class Command(BaseCommand):
    help = "Loads products and product categories from CSV file."

    def add_arguments(self, parser):
        parser.add_argument("file_path", type=str)

    def handle(self, *args, **options):
        start_time = timezone.now()
        with open('apps/movies/templates/csv/persons.csv', "r") as csv_file:
            data = csv.reader(csv_file, delimiter=",")
            for row in data:
                persons = Person.objects.get_or_create(
                    imdb_id=row[0],
                    name=row[1],
                    birth_year=row[2],
                    death_year=row[3]
                )
        csv_file.close()
        end_time = timezone.now()
        self.stdout.write(
            self.style.SUCCESS(
                f"Loading CSV took: {(end_time-start_time).total_seconds()} seconds."
            )
        )