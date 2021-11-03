from django.core.management.base import BaseCommand
from os import chdir


# Creating A Class \"Command"/ that extends BaseCommand
class Command(BaseCommand):
    help = 'This Command Will Display For You All The Person Movies That Written In File.'

    # Creating a Handle Function That Will Handle All The Data Of The Command You Created.
    def handle(self, *args, **options):
        chdir('Set Your movies_contents path directory')

        try:
            person_movies_file = open('name.basics.tsv', 'r')
            self.stdout.write(f'{person_movies_file.read()}')

        except FileNotFoundError:
            print('Sorry, The File You Looking For, Was Not Found In The Current Directory.')
