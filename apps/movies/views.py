from time import sleep

from django.http import HttpResponse
from django.shortcuts import render

import logging

from apps.movies.models import Movie

logger = logging.getLogger(__name__)

def list_movies(request):
    return render(request, 'movies/list.html', context={'movies': Movie.objects.order_by('-year').all()[:20]})

def movie_details(request, **kwargs):
    return render(request, 'movies/detail.html', context={'movie': Movie.objects.get(id=kwargs.get('id'))})

def long_running(request):
    logger.error('starting...')
    sleep(10)
    logger.error('Ok')
    return HttpResponse('Ok')