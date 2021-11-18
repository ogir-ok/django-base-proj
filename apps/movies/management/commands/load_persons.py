import os
import sys

from django.core.management.base import BaseCommand

from apps.movies.models import Person


class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument('--file', '-f', required=True)
        parser.add_argument('--delimeter', '-d', default='\t')

    def handle(self, *args, **options):
        filepath = options['file']
        delimeter = options['delimeter']

        our_persons_imdb_ids = Person.objects.values_list('imdb_id', flat=True)

        if not os.path.exists(filepath):
            print(f'No file {filepath} found.')
            sys.exit(1)

        with open(filepath) as f:
            for line in f.readlines():
                person_data = line.split(delimeter)
                print(person_data)
                if not person_data[0].startswith('nm'):
                    continue

                if not person_data[0] in our_persons_imdb_ids:
                    continue

                try:
                    birth_year = int(person_data[2])
                    birth_year = f'{birth_year}-01-01'
                except ValueError:
                    birth_year = None

                try:
                    death_year = int(person_data[3])
                    death_year = f'{death_year}-01-01'
                except ValueError:
                    death_year = None
                person_dict = dict(
                    name=person_data[1],
                    birth_year=birth_year,
                    death_year=death_year,
                )

                person, created = Person.objects.get_or_create(imdb_id=person_data[0],
                                                               defaults=person_dict)

                Person.objects.filter(id=person.id).update(**person_dict)

                print(person.id)
