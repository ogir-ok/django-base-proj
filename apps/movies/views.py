import datetime
from time import sleep

from django.contrib.auth.mixins import LoginRequiredMixin
from django.forms import modelformset_factory
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render

import logging

from django.urls import reverse_lazy
from django.views import View
from django.views.generic import TemplateView, ListView, DetailView, FormView, CreateView

from apps.movies.forms import MovieForm
from apps.movies.models import Movie, Person, PersonMovie

logger = logging.getLogger(__name__)


class SearchMixin:
    def get_queryset(self):
        queryset = super().get_queryset()
        return queryset.filter(name__icontains=self.request.GET.get('q', ''))

class MovieListView(SearchMixin, ListView):
    template_name = 'movies/movie_list.html'
    model = Movie
    paginate_by = 19


class MovieDetailView(DetailView):
    template_name = 'movies/detail.html'
    model = Movie


class MovieCreateView(LoginRequiredMixin, View):
    template_name = 'movies/add.html'

    def get(self, request):
        form = MovieForm()
        return render(request, 'movies/add.html', context={'form': form})

    def post(self, request):
        form = MovieForm(request.POST)
        if form.is_valid():
            movie = form.save()
            # PersonMovie.objects.create(person_id=form.data['director'], movie=movie, category='director')
            return HttpResponseRedirect(reverse_lazy('movies:movie_details', kwargs={'pk': movie.id}))
        return render(request, 'movies/add.html', context={'form': form})


class PersonCreateView(CreateView):
    model = Person
    fields = '__all__'


class LongRunning(View):
    def get(self, request):
        logger.error('starting...')
        sleep(10)
        logger.error('Ok')
        return HttpResponse('Ok')