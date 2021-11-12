import csv

from django.core.management.base import BaseCommand

from apps.movies.models import Person


# Creating A Class \"Command"/ that extends BaseCommand
class Command(BaseCommand):
    help = 'This Command Will Display For You All The Persons That Written In File.'

    def add_arguments(self, parser):
        parser.add_argument('--file')

    def handle(self, *args, **options):
        try:
            with open(options['title.principals.tsv']) as csv_file:
                csv_reader = csv.DictReader(csv_file, delimeter='\n', quotechar='|')

                for line in csv_reader:
                    person, created = Person.objects.get_or_create(imdb=line['nconst'])
                    person.name = line['primaryName']
                    person.birth_year = line['birthYear']
                    person.death_year = line('deathYear')
                    person.save()

        except FileNotFoundError:
            print('THE FILE NOT FOUND!!!')
