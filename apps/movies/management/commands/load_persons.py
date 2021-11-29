from django.core.management.base import BaseCommand
from apps.movies.models import Person
from datetime import date
import csv
import os
import sys


class Command(BaseCommand):
    help = 'Use this command to upload data to your database'

    def handle(self, *args, **options):
        path = options['file']

        if not os.path.exists(path):
            print(f'No file {path} found')
            sys.exit(1)

        our_persons_imdb_ids = Person.objects.values_list('imdb_id', flat=True)

        with open(path, 'r') as tsvfile:
            tsvreader = csv.reader(tsvfile, delimiter='\t')
            next(tsvfile)

            for person_data in tsvreader:
                if not person_data[0] in our_persons_imdb_ids:
                    continue

                if person_data[2] != '\\N':
                    birth_year = date(int(person_data[2]), 1, 1)
                else:
                    birth_year = None

                if person_data[3] != '\\N':
                    death_year = date(int(person_data[3]), 1, 1)
                else:
                    death_year = None

                person_dict = dict(
                    name=person_data[1],
                    birth_year=birth_year,
                    death_year=death_year
                )

                person, created = Person.objects.get_or_create(imdb_id=person_data[0],
                                                               defaults=person_dict)

                Person.objects.filter(id=person.id).update(**person_dict)

    def add_arguments(self, parser):
        parser.add_argument(
            '--file',
            required=True,
            help='Set absolute path to data file .tsv',
        )
