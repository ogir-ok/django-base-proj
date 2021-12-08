import logging
from time import sleep
from django.contrib.auth.mixins import LoginRequiredMixin
from django.forms import modelformset_factory
from django.http import HttpResponse, HttpResponseRedirect
from django.views.generic import *
from django.shortcuts import render
from django.urls import reverse_lazy
from django.db import connection
from apps.movies.forms import *
from apps.movies.models import *

logger = logging.getLogger(__name__)


class SearchMixin:
    def get_queryset(self):
        queryset = super().get_queryset()
        return queryset.filter(name__icontains=self.request.GET.get('q', '')).all()


class MovieList(SearchMixin, ListView):
    template_name = 'movies/movies_list.html'
    model = Movie
    paginate_by = 19


class MovieDetailView(DetailView):
    template_name = 'movies/movie_detail.html'
    model = Movie

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        formset_factory = modelformset_factory(PersonMovie, fields=['order', 'category', 'job', 'characters'])
        context['formset'] = formset_factory(queryset=self.get_object().persons.all())
        return context


class MovieAddView(LoginRequiredMixin, CreateView):
    template_name = 'movies/movie_add.html'
    model = Movie
    form_class = MovieForm

    def post(self, request, **kwargs):
        form = MovieForm(request.POST)
        if form.is_valid():
            movie = form.save()
            return HttpResponseRedirect(reverse_lazy('movies:movie_details', kwargs={'pk': movie.id}))
        return render(request, 'movies/movie_add.html', context={'form': form})


class PersonAddView(LoginRequiredMixin, CreateView):
    template_name = 'movies/person_add.html'
    model = Person
    form_class = PersonForm

    def post(self, request, **kwargs):
        form = PersonForm(request.POST)
        if form.is_valid():
            person = form.save()
            return HttpResponseRedirect(reverse_lazy('movies:movie_list'))
        return render(request, 'movies/movie_add.html', context={'form': form})


class MovieAndActorRank(DetailView):
    @staticmethod
    def get(request, **kwargs):
        with connection.cursor() as cursor:
            cursor.execute(""" SELECT movies_person.name, sum(sq.rating) as rating from movies_person
                                join movies_personmovie on movies_personmovie.person_id = movies_person.id
                                join (Select movies_movie.id as "movie_id", sum(sq.rating) as rating from movies_movie
                                join movies_personmovie on movies_personmovie.movie_id = movies_movie.id
                                join (Select movies_person.id AS "person_id", count(*) as rating from movies_person
                                join public.movies_personmovie on movies_person.id = movies_personmovie.person_id
                                where
                                    movies_personmovie.category = 'actor' or
                                    movies_personmovie.category = 'actress' or
                                    movies_personmovie.category = 'self'  
                                group by movies_person.id) as sq on sq.person_id = movies_personmovie.person_id
                                group by movies_movie.id) as sq on sq.movie_id = movies_personmovie.movie_id
                                where
                                    movies_personmovie.category = 'actor' or
                                    movies_personmovie.category = 'actress' or
                                    movies_personmovie.category = 'self'
                                group by movies_person.name
                                order by rating DESC;""")
            person_rank = cursor.fetchall()
            cursor.execute(""" SELECT movies_movie.name, sum(sq.rating) as rating from movies_movie
                                join movies_personmovie on movies_personmovie.movie_id = movies_movie.id
                                join (Select movies_person.id AS "person_id", count(*) as rating from movies_person
                                left outer join public.movies_personmovie on movies_person.id = movies_personmovie.person_id
                                where
                                    movies_personmovie.category = 'actor' or
                                    movies_personmovie.category = 'actress' or
                                    movies_personmovie.category = 'self'  
                                group by movies_person.id) as sq on sq.person_id = movies_personmovie.person_id
                                group by movies_movie.id
                                order by rating desc;""")
            movie_rank = cursor.fetchall()
            movie_rank, person_rank = movie_rank[:10], person_rank[:10]

        return render(request, 'movies/movie and person rank.html',
                      context={'data_movie': movie_rank,
                               'data_person': person_rank})


class LongRunning(View):
    @staticmethod
    def get(request):
        logger.error('starting...')
        sleep(10)
        logger.error('Ok')
        return HttpResponse('Ok')
