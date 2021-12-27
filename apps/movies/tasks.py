from celery import shared_task
import requests
from bs4 import BeautifulSoup

from apps.movies.models import Movie


@shared_task
def parse_movies():
    response = requests.get(f'https://www.imdb.com/title/tt0000001/')
    bs = BeautifulSoup(response.text)

    return bs.find('p', {'data-testid': 'plot'}).find('span').findNext().text


def ab(a, b):
    return a + b


@shared_task
def task2(a, b):
    x = ab(a, b) + ab(a, b)
    return x
