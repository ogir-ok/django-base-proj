from django.shortcuts import render


def list_movies(request):
    return render(request, 'movies/list.html')