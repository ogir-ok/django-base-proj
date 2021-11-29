from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from time import sleep
import logging
from django.urls import reverse_lazy
from apps.movies.models import Movie, Person, PersonMovie
from .forms import MovieForm, PersonForm
from django.db.models import Count, Q, Subquery
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
            movie = Movie.objects.create(name=form.data['name'],
                                         title_type=form.data['title_type'],
                                         is_adult=form.data.get('is_adult') == 'on',
                                         year=form.data['year'],
                                         genres=list(form.data['genres'].split(',')))

            #  added 'uam'(user add movie) to demarcate imdb data and user input data
            movie.imdb_id = 'uam' + str(movie.id)
            movie.save()

            PersonMovie.objects.create(person_id=form.data['director'], movie=movie, category='director')

            return HttpResponseRedirect(reverse_lazy('movies:movie_details', kwargs={'id': movie.id}))
    else:
        form = MovieForm()
    return render(request, 'movies/add_movie.html', context={'form': form})


def person_add(request):
    if request.method == 'POST':
        form = PersonForm(request.POST)

        if form.is_valid():

            if form.data.get('death_year'):
                death_year = form.data.get('death_year')
            else:
                death_year = None

            person = Person.objects.create(name=form.data['name'],
                                           birth_year=form.data['birth_year'],
                                           death_year=death_year)

            #  added 'uap'(user add person) to demarcate imdb data and user input data
            person.imdb_id = 'uap' + str(person.id)
            person.save()

            PersonMovie.objects.create(person=person,
                                       category=form.data['category'],
                                       job=form.data['job'],
                                       characters=list(form.data['characters'].split(',')))

            return HttpResponseRedirect(reverse_lazy('movies:movie_list'))
    else:
        form = PersonForm()
    return render(request, 'movies/add_person.html', context={'form': form})


def rating(request):
    actors_rating = Person.objects.filter(
        Q(personmovie__category='actor') | Q(personmovie__category='actress') | Q(personmovie__category='self')
    ).annotate(num_movies=Count('movies_participating')).order_by('-num_movies')[:20]

    with connection.cursor() as cursor:
        cursor.execute('''
            SELECT movies_movie.name, sum(sq.rating) as rating from movies_movie
            join movies_personmovie on movies_personmovie.movie_id = movies_movie.id
            join (Select movies_person.id AS "person_id", count(*) as rating from movies_person
            left outer join public.movies_personmovie on movies_person.id = movies_personmovie.person_id
            where
                movies_personmovie.category = 'actor' or
                movies_personmovie.category = 'actress' or
                movies_personmovie.category = 'self'  
            group by movies_person.id) as sq on sq.person_id = movies_personmovie.person_id
            group by movies_movie.id
            order by rating desc;
            ''')
        movies_rating = cursor.fetchall()

    return render(request, 'movies/rating.html', context={'actors_rating': actors_rating, 'movies_rating': movies_rating})


def long_running(request):
    logger.error('starting...')
    sleep(10)
    logger.error('Ok')
    return HttpResponse('Ok')
