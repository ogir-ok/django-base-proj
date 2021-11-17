from time import sleep

from django.http import HttpResponse
from django.shortcuts import render

import logging

logger = logging.getLogger(__name__)

def list_movies(request):
    return render(request, 'movies/list.html')

def long_running(request):
    logger.error('starting...')
    sleep(10)
    logger.error('Ok')
    return HttpResponse('Ok')