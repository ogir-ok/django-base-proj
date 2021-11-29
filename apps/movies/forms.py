from operator import itemgetter
from django.forms import ModelForm
from django import forms
from apps.movies.models import Movie, Person
from django.utils.translation import ugettext_lazy as _


class MovieForm(ModelForm):
    class Meta:
        model = Movie
        exclude = ['imdb_id']

    director_list = []
    for person in Person.objects.all():
        if person.personmovie_set.filter(category='director'):
            director_list.append(person)
        else:
            continue
    choices = [(director.id, director.name) for director in director_list]
    director = forms.ChoiceField(choices=sorted(choices, key=itemgetter(1)))


class PersonForm(ModelForm):
    class Meta:
        model = Person
        exclude = ['imdb_id', 'death_year']

    CATEGORY_CHOICES = [
        ('', '--------'),
        (1, _('actor')),
        (2, _('actress')),
        (3, _('cinematographer')),
        (4, _('composer')),
        (5, _('director')),
        (6, _('editor')),
        (7, _('producer')),
        (8, _('self')),
        (9, _('writer'))
    ]

    JOB_CHOICES = [
        ('', '--------'),
        (1, _('co-director')),
        (2, _('comic strip')),
        (3, _('director of photography')),
        (4, _('novel')),
        (5, _('play')),
        (6, _('poem')),
        (7, _('producer')),
        (8, _('scenario')),
        (9, _('screen play')),
        (10, _('story')),
        (11, _('writer'))
    ]

    death_year = forms.DateField(required=False)
    category = forms.ChoiceField(choices=CATEGORY_CHOICES)
    job = forms.ChoiceField(choices=JOB_CHOICES)
    characters = forms.CharField(max_length=255)
