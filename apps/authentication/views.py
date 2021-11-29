from django.contrib.auth import get_user_model
from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from apps.movies.models import Movie

User = get_user_model()


@login_required
def my_view(request):
    return render(request, 'authentication/base.html')


@login_required
def list_users(request):
    users_list = User.objects.all()
    movies_list = Movie.objects.all()
    return render(request, 'authentication/users.html',
                  context={
                      'users': users_list,
                      'movies': movies_list
                  })
