from django.contrib.auth import get_user_model, authenticate
from django.contrib.auth.decorators import login_required
from django.core.mail import send_mail
from django.shortcuts import render, redirect
from django.template.context_processors import request
from django.urls import reverse
from django.views.generic import FormView, CreateView, View
from apps.authentication.forms import UserCreateForm
from apps.movies.models import Movie
from django.utils.encoding import force_bytes, force_text, DjangoUnicodeDecodeError
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.contrib.sites.shortcuts import get_current_site
from apps.authentication.utils import token_generator
from django.contrib.auth.models import User
from apps.authentication.tasks import send_confirm_mail

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


class RegisterViev(CreateView):
    template_name = 'authentication/register.html'
    form_class = UserCreateForm
    success_url = '/'

    def form_valid(self, form):
        self.user = form.save()
        email = form.data.get('email')
        self.user.is_active = False
        self.user.save()

        uidb64 = urlsafe_base64_encode(force_bytes(self.user.pk))
        domain = get_current_site(self.request).domain
        link = reverse('authentication:activate', kwargs={'uidb64': uidb64, 'token': token_generator.make_token(
            self.user)})
        activate_url = f'http://{domain}{link}'

        email_body = f'Hi {self.user} , Please use this link to verify your account\n{activate_url}'

        email_subject = 'Activate your account'

        send_confirm_mail.delay(email_subject, email_body,email)

        return super().form_valid(form)


class VerificationView(View):
    def get(self, request, uidb64, token):
        try:
            id = force_text(urlsafe_base64_decode(uidb64))
            user = User.objects.get(pk=id)
            user.is_active = True
            user.save()

            if not token_generator.check_token(user, token):
                return redirect('login' + '?massage=' + 'User already activated')
            if user.is_active:
                return redirect('login')
            user.is_active = True
            user.save()

            return redirect('/')

        except Exception as ex:
            return redirect('authentication:login-users')


class LoginView(View):
    def get(self, request):
        return render(request, 'registration/login.html')
