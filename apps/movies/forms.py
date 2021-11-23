from django import forms
from apps.movies.models import Person, Movie, PersonMovie


class MovieForm(forms.ModelForm):
    class Meta:
        model = Movie
        fields = ['name', 'year']


class PersonForm(forms.ModelForm):
    class Meta:
        model = Person
        fields = ['name', 'birth_year']
