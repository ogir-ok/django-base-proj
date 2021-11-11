import csv
from django.core.management import BaseCommand
from django.utils import timezone
from apps.movies.models import PersonMovie


class Command(BaseCommand):
    help = "Loads products and product categories from CSV file."

    def add_arguments(self, parser):
        parser.add_argument("file_path", type=str)

    def handle(self, *args, **options):
        start_time = timezone.now()
        with open('apps/movies/templates/csv/person_movies.csv', "r") as csv_file:
            data = csv.reader(csv_file, delimiter=",")
            for row in data:
                person_movies = PersonMovie.objects.get_or_create(
                    movie_id=row[0],
                    person_id=row[1],
                    order=row[2],
                    category=row[3],
                    job=row[4],
                    characters=row[5]
                )
        csv_file.close()
        end_time = timezone.now()
        self.stdout.write(
            self.style.SUCCESS(
                f"Loading CSV took: {(end_time-start_time).total_seconds()} seconds."
            )
        )

