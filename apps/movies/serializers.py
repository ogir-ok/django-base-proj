
from rest_framework import serializers
from rest_framework.reverse import reverse_lazy

from apps.movies.models import Movie, Person, PersonMovie


class PersonSerializer(serializers.ModelSerializer):
    class Meta:
        model = Person
        fields = '__all__'


class PersonMovieSerializer(serializers.ModelSerializer):
    class Meta:
        model = PersonMovie
        fields = '__all__'

class MovieShortSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movie
        fields = ['director', 'name', 'year', 'url', 'current_user']

    current_user = serializers.SerializerMethodField()
    director = serializers.SerializerMethodField()
    url = serializers.SerializerMethodField()

    def get_director(self, movie):
        director = movie.persons.filter(category='director').first()
        if director:
            return director.person.name

    def get_url(self, movie):
        return reverse_lazy('apps.movies:movies-detail', kwargs={'pk': movie.pk})

    def get_current_user(self, movie):
        user = self.context['request'].user
        if user.is_authenticated:
            return user.email
        else:
            return 'N/a'



class MovieSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movie
        fields = '__all__'

    director = PersonSerializer(write_only=True)
    actors = PersonSerializer(write_only=True, many=True)
    persons_participating = PersonSerializer(many=True, read_only=True)
