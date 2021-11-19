import sys
from django.core.management.base import BaseCommand
from apps.movies.models import Person
import csv
from datetime import date
import os


class Command(BaseCommand):
    help = 'Use this command to upload data to your database'

    def handle(self, *args, **options):
        path = options['file']
        if not os.path.exists(path):
            print(f'No file {path} found')
            sys.exit(1)
        with open(path, 'r') as tsvfile:
            tsvreader = csv.reader(tsvfile, delimiter='\t')
            next(tsvfile)
            for person_data in tsvreader:
                person, created = Person.objects.get_or_create(imdb_id=person_data[0])
                person.name = person_data[1]
                if person_data[2] != '\\N':
                    person.birth_year = date(int(person_data[2]), 1, 1)
                else:
                    person.birth_year = None
                if person_data[3] != '\\N':
                    person.death_year = date(int(person_data[3]), 1, 1)
                else:
                    person.death_year = None
                person.save()

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            required=True,
            help='Set absolute path to data file .tsv',
        )
