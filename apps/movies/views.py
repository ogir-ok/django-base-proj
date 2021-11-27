import logging
from time import sleep
from django.contrib.auth.mixins import LoginRequiredMixin
from django.forms import modelformset_factory
from django.http import HttpResponse
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
    success_url = reverse_lazy('movies:movie_list')


class PersonAddView(LoginRequiredMixin, CreateView):
    template_name = 'movies/person_add.html'
    model = Person
    form_class = PersonForm
    success_url = reverse_lazy('movies:movie_list')


def movie_and_person_rank(request):
    movie_rank = connection.cursor()
    person_rank = connection.cursor()
    person_rank.execute("""
                           SELECT movies_person.name,count( * ) as rank
                            from movies_personmovie
                            join movies_movie on movies_movie.id = movies_personmovie.movie_id
                            join movies_person on movies_person.id =  movies_personmovie.person_id
                            group by movies_person.id
                            order by rank desc;
                        """)
    movie_rank.execute("""SELECT movies_movie.name, sum(sq.occurences_count) as "rank" from movies_movie
                                join movies_personmovie on movies_personmovie.movie_id = movies_movie.id
                                left join(SELECT movies_person.id as "person_id", count(*) as "occurences_count" 
                                from movies_person
                                left outer join public.movies_personmovie on movies_person.id = movies_personmovie.person_id
                                where
                                    movies_personmovie.category = 'actor' or
                                    movies_personmovie.category = 'actress' or
                                    movies_personmovie.category = 'self'
                                group by movies_person.id) as sq on sq.person_id = movies_personmovie.movie_id
                                group by movies_movie.id
                                order by rank Desc;
                    """)
    return render(request, 'movies/movie and person rank.html',
                  context={'data_movie': movie_rank,
                           'data_person': person_rank})


class LongRunning(View):
    def get(self, request):
        logger.error('starting...')
        sleep(10)
        logger.error('Ok')
        return HttpResponse('Ok')
