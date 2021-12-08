from django.contrib.auth import get_user_model
from django.contrib.auth.decorators import login_required
from django.core.mail import send_mail
from django.shortcuts import render
from django.views.generic import FormView

from apps.authentication.forms import UserCreateForm
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


class RegisterViev(FormView):
    template_name = 'authentication/register.html'
    form_class = UserCreateForm
    success_url = '/'

    def form_valid(self, form):
        self.user = form.save()
        email = form.data.get('email')
        send_mail('hello', 'please confirm your email', 'admin@site.com', email)
        return super().form_valid(form)
