from django.core.management.base import BaseCommand
from apps.movies.models import Person
import csv
from datetime import date


class Command(BaseCommand):
    help = 'Uploads data to your database'

    def handle(self, *args, **options):
        path = options['path']
        with open(path, 'r') as d:
            tsv = csv.reader(d, delimiter='\t')
            next(d)
            for data in tsv:
                person, created = Person.objects.get_or_create(imdb_id=data[0])
                person.name = data[1]
                if data[2] != '\\N':
                    person.birth_year = date(int(data[2]), 1, 1)
                else:
                    person.birth_year = date(999, 9, 9)
                if data[3] != '\\N':
                    person.death_year = date(int(data[3]), 1, 1)
                else:
                    person.death_year = date(999, 9, 9)
                person.save()

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            action='store',
            dest='path',
            required=True,
            help='Please put path to .tsv file',
        )
