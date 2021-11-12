from django.shortcuts import render, get_object_or_404
from apps.movies.models import Movie


def movies_list(request):
    movies = Movie.objects.order_by('imdb_id')[:20]
    return render(request, 'movies/movies_list.html', context={'movies': movies})


def movie_detail(request, pk):
    movie = get_object_or_404(Movie, pk=pk)
    if movie.year is not None:
        year = str(movie.year)[:4]
    else:
        year = 'No data'
    person_movies = movie.personmovie_set.all()
    actors = []
    for person_obj in person_movies:
        if person_obj.category == 'actor' or person_obj.category == 'actress':
            if person_obj.person_id.name is None:
                continue
            else:
                actors.append(person_obj.person_id.name)
    if len(actors) < 1:
        actors.append('No data')
    return render(request, 'movies/movie_detail.html', context={'movie': movie,
                                                                'year': year,
                                                                'person_movies': person_movies,
                                                                'actors': actors})
