from django.contrib.auth.forms import *
from django import forms


class UserCreateForm(UserCreationForm):
    email = forms.EmailField(required=True, label='Email', widget=forms.EmailInput(attrs={'class': 'form-input'}))
    username = forms.CharField(label='Username', widget=forms.TextInput(attrs={'class': 'form-input'}))
    first_name = forms.CharField(label='First name', widget=forms.TextInput(attrs={'class': 'form-input'}))
    last_name = forms.CharField(label='Last name', widget=forms.TextInput(attrs={'class': 'form-input'}))
    password1 = forms.CharField(required=True, label='Password',
                                widget=forms.PasswordInput(attrs={'class': 'form-input'}))
    password2 = forms.CharField(required=True, label='Confirm Password',
                                widget=forms.PasswordInput(attrs={'class': 'form-input'}))

    class Meta:
        model = User

        fields = ("first_name", "last_name", "username", "password1", "password2", "email")

