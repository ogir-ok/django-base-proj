from django import forms
from django_select2 import forms as s2forms

from apps.movies.models import Person, Movie, PersonMovie


class PersonsWidget(s2forms.ModelSelect2MultipleWidget):
    search_fields = [
        "name__icontains",
    ]

class MovieForm(forms.ModelForm):
    class Meta:
        model = Movie
        fields = ['name', 'year', 'persons_participating']
        widgets = {
            'year': forms.SelectDateWidget(),
            'persons_participating': PersonsWidget()
        }


class PersonMovieForm(forms.ModelForm):
    class Meta:
        model = PersonMovie
        fields = ['order', 'category', 'job', 'characters']
