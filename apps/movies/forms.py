from django import forms

from apps.movies.models import Person, Movie


class MovieFormOld(forms.Form):
    year = forms.DateField(label='Date')
    name = forms.CharField(label='Name')
    director = forms.ChoiceField(choices=[(person.id, person.name) for person in Person.objects.all()])


class MovieForm(forms.ModelForm):
    class Meta:
        model = Movie
        fields = ['name', 'year']


class PersonForm(forms.ModelForm):
    class Meta:
        model = Person
        fields = ['name', 'birth_year', 'death_year', 'movies_participating']
