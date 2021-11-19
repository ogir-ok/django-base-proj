import datetime
from time import sleep

from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render

import logging

from django.urls import reverse_lazy

from apps.movies.models import Movie, Person, PersonMovie

logger = logging.getLogger(__name__)

def movie_list(request):
    return render(request, 'movies/list.html', context={'movies': Movie.objects.order_by('-year').all()[:20]})

def movie_details(request, **kwargs):
    return render(request, 'movies/detail.html', context={'movie': Movie.objects.get(id=kwargs.get('id'))})

def movie_add(request):
    error = ''
    name = ''
    year = ''
    director = ''
    if request.method == 'POST':
        name = request.POST.get('name')
        year = request.POST.get('year')
        director = request.POST.get('director')
        if not director:
            error = 'Director was not choosen'
        if not year:
            error = 'Year was not inputed.'
        try:
            year_date = datetime.date(year=int(year), month=1, day=1)
        except ValueError:
            error = 'Incorrect year.'

        if not name:
            error = 'Name was not inputed.'

        if not error:
            movie = Movie.objects.create(name=name, year=year_date)
            PersonMovie.objects.create(person_id=director, movie=movie, category='director')

            return HttpResponseRedirect(reverse_lazy('movies:movie_details', kwargs={'id': movie.id}))

    return render(request, 'movies/add.html', context={'error': error, 'name': name, 'year': year,
                                                       'persons': Person.objects.all(), 'director': director})

def long_running(request):
    logger.error('starting...')
    sleep(10)
    logger.error('Ok')
    return HttpResponse('Ok')