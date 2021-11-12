import csv

from django.core.management.base import BaseCommand

from apps.movies.models import PersonMovie, Movie


# Creating A Class \"Command"/ that extends BaseCommand
class Command(BaseCommand):
    help = 'This Command Will Display For You All The Person Movies That Written In File.'

    def add_arguments(self, parser):
        parser.add_argument('--file')

    def handle(self, *args, **options):
        try:
            with open(options['title.principals.tsv']) as csv_file:
                csv_reader = csv.DictReader(csv_file, delimeter='\n', quotechar='|')

                for line in csv_reader:
                    movie, movie_created = Movie.objects.get_or_create(imdb=line['tconst'])
                    peroson_movies, created = PersonMovie.objects.get_or_create(imdb=line['nconst'])
                    peroson_movies.order = line['ordering']
                    peroson_movies.Category = line['Category']
                    peroson_movies.job = line.get('job') != 0
                    peroson_movies.characters = line['characters']
                    peroson_movies.save()

        except FileNotFoundError:
            print('THE FILE NOT FOUND!!!')
