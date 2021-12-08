from django.urls import path
from .views import *

app_name = 'apps.movies'

urlpatterns = [
    path('', MovieList.as_view(), name='movie_list'),
    path(r'<int:pk>/', MovieDetailView.as_view(), name='movie_details'),
    path(r'add/movies', MovieAddView.as_view(), name='movie_add'),
    path(r'add/person', PersonAddView.as_view(), name='person_add'),
    path('long_running/', LongRunning.as_view(), name='long_running'),
    path('rank/', MovieAndActorRank.as_view(), name='movie_and_person_rank')
]
