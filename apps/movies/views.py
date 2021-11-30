import datetime
from time import sleep

from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render

import logging

from django.urls import reverse_lazy

from apps.movies.forms import MovieForm, PersonForm
from apps.movies.models import Movie, Person, PersonMovie
from django.db import connection

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


def person_add(request):
    if request.method == 'POST':
        form = PersonForm(request.POST)
        if form.is_valid():
            person = form.save()
            return HttpResponseRedirect(reverse_lazy('movies:list_movies'))
    else:
        form = PersonForm()
    return render(request, 'movies/person_add.html', context={'form': form})


def movie_rating(request):

        cursor_m = connection.cursor()

        cursor_m.execute("""SELECT "movies_movie"."name", sum(sq.occurences_count) as "rating" FROM movies_movie
                          JOIN movies_personmovie on movies_personmovie.movie_id = movies_movie.id
                          JOIN (SELECT movies_person.id as person_id, count( * ) as "occurences_count" from movies_person
                          LEFT OUTER JOIN movies_personmovie on movies_person.id = movies_personmovie.person_id
                          WHERE
                                movies_personmovie.category = 'actor' or 
                                movies_personmovie.category = 'actress' or 
                                movies_personmovie.category = 'self'  
                          GROUP by movies_person.id) as sq on sq.person_id = movies_personmovie.person_id

                          GROUP by movies_movie.id order by rating DESC;""")

        cursor_a = connection.cursor()


        cursor_a.execute("""SELECT "movies_person"."name", sum(sq.occurences_count) as "rating" FROM movies_person
                                JOIN movies_personmovie on movies_personmovie.person_id = movies_person.id
                                JOIN (SELECT movies_movie.id as movie_id, count( * ) as "occurences_count" from movies_movie
                                LEFT OUTER JOIN public.movies_personmovie on movies_movie.id = movies_personmovie.movie_id
                                WHERE
                                    movies_personmovie.category = 'actor' or 
                                    movies_personmovie.category = 'actress'
                     
                                GROUP by movies_movie.id) as sq on sq.movie_id = movies_personmovie.movie_id
                                GROUP by movies_person.id order by rating DESC;""")

        return render(request, 'movies/rating.html', context={'cursor_m': cursor_m, 'cursor_a': cursor_a})


def long_running(request):
    logger.error('starting...')
    sleep(10)
    logger.error('Ok')
    return HttpResponse('Ok')