import logging
from time import sleep
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse_lazy
from apps.movies.forms import MovieForm, PersonForm
from apps.movies.models import Movie, Person

logger = logging.getLogger(__name__)


def list_movies(request):
    return render(request, 'movies/movies_list.html', context={'movies': Movie.objects.order_by('-year').all()[:20]})


def movie_details(request, **kwargs):
    return render(request, 'movies/movie_detail.html', context={'movie': Movie.objects.get(id=kwargs.get('id'))})


def movie_add(request):
    if request.method == 'POST':
        form_movie = MovieForm(request.POST)
        if form_movie.is_valid():
            movie = Movie.objects.create(name=form_movie.data['name'], year=form_movie.data['year'])
            return HttpResponseRedirect(reverse_lazy('movies:movie_details', kwargs={'id': movie.id}))
    else:
        form_movie = MovieForm()
    return render(request, 'movies/movie_add.html', context={'form': form_movie})


def person_add(request):
    if request.method == 'POST':
        form_person = PersonForm(request.POST)
        if form_person.is_valid():
            person = Person.objects.create(name=form_person.data['name'], birth_year=form_person.data['birth_year'])
            return HttpResponseRedirect(reverse_lazy('movies:list_movies'))
    else:
        form_person = PersonForm()
    return render(request, 'movies/person_add.html', context={'form': form_person})

def movie_and_person_rank(request):
    pass

def long_running(request):
    logger.error('starting...')
    sleep(10)
    logger.error('Ok')
    return HttpResponse('Ok')
