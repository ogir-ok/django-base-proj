from  django.core.management.base import BaseCommand
from apps.movies.models import Person
import csv


class Command(BaseCommand):
    def add_arguments(self, parser):
        parser.add_argument('--file')

    def handle(self, *args, **options):
        with open(options['file']) as csvfile:
            reader = csv.DictReader(csvfile, delimiter='\t', quotechar='|')

            for line in reader:
                next(reader)
                person, created = Person.objects.get_or_create(imdb_id=line['nconst'])
                person.name = line['primaryName']
                person.birth_year = line['birthYear']
                if line['birthYear'] == '\\N':
                    person.birth_year = None
                else:
                    person.birth_year = line['birthYear'] + '-01-01'
                person.death_year = line['deathYear']
                if line['deathYear'] == '\\N':
                    person.death_year = None
                else:
                    person.death_year = line['deathYear'] + '-01-01'

                person.save()
