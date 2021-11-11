from django.core.management.base import BaseCommand
from apps.movies.models import Person
import csv
from datetime import date


class Command(BaseCommand):
    help = 'Use this command to upload data to your database'

    def handle(self, *args, **options):
        path = options['path']
        with open(path, 'r') as tsvfile:
            tsvreader = csv.reader(tsvfile, delimiter='\t')
            next(tsvfile)
            for line in tsvreader:
                person, created = Person.objects.get_or_create(imdb_id=line[0])
                person.name = line[1]
                if line[2] != '\\N':
                    person.birth_year = date(int(line[2]), 1, 1)
                else:
                    person.birth_year = date(1111, 1, 1)
                if line[3] != '\\N':
                    person.death_year = date(int(line[3]), 1, 1)
                else:
                    person.death_year = date(1111, 1, 1)
                person.save()

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            action='store',
            dest='path',
            required=True,
            help='Set absolute path to data file .tsv',
        )
