from django.urls import path
from .views import MovieListCreateApiView, MovieDetailApiView

app_name = 'apps.movies'

urlpatterns = [
    path('', MovieListCreateApiView.as_view(), name='movies-listcreated'),
    path(f'<int:pk>/', MovieDetailApiView.as_view(), name='movies-detail')
]
