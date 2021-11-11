import csv
from django.core.management import BaseCommand
from django.utils import timezone
from apps.movies.models import Movie


class Command(BaseCommand):
    help = "Loads products and product categories from CSV file."

    def add_arguments(self, parser):
        parser.add_argument("file_path", type=str)

    def handle(self, *args, **options):
        start_time = timezone.now()

        with open('apps/movies/templates/csv/movies.csv', "r") as csv_file:
            data = csv.reader(csv_file, delimiter=",")
            try:
                for row in data:
                    created = Movie.objects.get_or_create(
                        imdb_id=row[0],
                        title_type=row[1],
                        name=row[2],
                        is_adult=row[3],
                        year=row[4],
                        genres=row[5]
                    )
            except Movie.DoesNotExist:
                print('Error')
        csv_file.close()
        end_time = timezone.now()
        self.stdout.write(
            self.style.SUCCESS(
                f"Loading CSV took: {(end_time - start_time).total_seconds()} seconds."
            )
        )
