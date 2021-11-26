import datetime
from time import sleep

from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render

import logging

from django.urls import reverse_lazy

from apps.movies.forms import MovieForm
from apps.movies.models import Movie, Person, PersonMovie

logger = logging.getLogger(__name__)

def movie_list(request):
    return render(request, 'movies/list.html', context={'movies': Movie.objects.order_by('-year').all()[:20]})

def movie_details(request, **kwargs):
    return render(request, 'movies/detail.html', context={'movie': Movie.objects.get(id=kwargs.get('id'))})

def movie_add(request):
    if request.method == 'POST':
        form = MovieForm(request.POST)
        if form.is_valid():
            movie = form.save()
            # PersonMovie.objects.create(person_id=form.data['director'], movie=movie, category='director')
            return HttpResponseRedirect(reverse_lazy('movies:movie_details', kwargs={'id': movie.id}))
    else:
        form = MovieForm()
    return render(request, 'movies/add.html', context={'form': form})

def long_running(request):
    logger.error('starting...')
    sleep(10)
    logger.error('Ok')
    return HttpResponse('Ok')