from django.urls import path
from .views import MovieListView, MovieDetailView, MovieCreateView, LongRunning, PersonCreateView

app_name = 'apps.movies'

urlpatterns = [
    path('', MovieListView.as_view(), name='list_movies'),
    path(r'<int:pk>/', MovieDetailView.as_view(), name='movie_details'),
    path(r'add/', MovieCreateView.as_view(), name='movie_add'),
    path('long_running/', LongRunning.as_view(), name='long_running'),
    path(r'person/add/', PersonCreateView.as_view(), name='person_add')
]
