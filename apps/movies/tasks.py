from celery import shared_task
import requests
from bs4 import BeautifulSoup

from apps.movies.models import Movie


@shared_task
def parse_movies():
    for movie in [Movie.objects.first()]:
        response = requests.get(f'https://www.imdb.com/title/{movie.imdb_id}/')
        print(response)
        bs = BeautifulSoup(response.text)
        print(bs.find_all('img'))

        #print(movie.imdb_id)

        #print(bs.find('p', {'data-testid': 'plot'}).find('span').findNext().text)