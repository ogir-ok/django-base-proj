from django import forms
from apps.movies.models import *
from django_select2 import forms as s2forms


class PersonWidget(s2forms.ModelSelect2MultipleWidget):
    search_fields = [
        'name__icontains'
    ]


class MovieForm(forms.ModelForm):
    class Meta:
        model = Movie
        fields = ['name', 'year', 'persons_participating']
        YEAR_CHOICES = list(range(1800, 2050))
        widgets = {
            'year': forms.SelectDateWidget(years=YEAR_CHOICES),
            'persons_participating': PersonWidget()
        }


class PersonForm(forms.ModelForm):
    class Meta:
        model = Person
        YEAR_CHOICES = list(range(1800, 2023))
        fields = ['name', 'birth_year']
        widgets = {
            'birth_year': forms.SelectDateWidget(years=YEAR_CHOICES)
        }


class PersonMovieForm(forms.ModelForm):
    class Meta:
        model = PersonMovie
        fields = ['category', 'job', 'characters']
