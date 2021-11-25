import logging
from time import sleep
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse_lazy
from django.db import connection
from apps.movies.forms import MovieForm, PersonForm
from apps.movies.models import *


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
    cursor = connection.cursor()
    cursor.execute("""SELECT movies_movie.name,sum(sq.occurences_count) as "rank"
                        from movies_movie
                        join movies_personmovie on movies_personmovie.movie_id = movies_movie.id
                        left join (SELECT movies_person.id as "person_id", count(*) as "occurences_count"
                                from movies_person
                                LEFT OUTER join public.movies_personmovie on movies_person.id = movies_personmovie.person_id
                                where 
                                    movies_personmovie.category = 'actor' or
                                    movies_personmovie.category = 'actress' or
                                movies_personmovie.category = 'self'
                                group by movies_person.id) as sq on sq.person_id = movies_personmovie.person_id
                        group by movies_movie.id
                        order by rank DESC;
    """)
    return render(request, 'movies/movie and person rank.html', context={'data': cursor})


def long_running(request):
    logger.error('starting...')
    sleep(10)
    logger.error('Ok')
    return HttpResponse('Ok')
