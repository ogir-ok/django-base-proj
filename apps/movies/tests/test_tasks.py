import requests_mock
from unittest.mock import Mock, patch

from django.test import TestCase

from apps.movies.tasks import ab, task2, parse_movies


class ABTest(TestCase):
    def test_ab__should_return__a_plus_b(self):
        self.assertEquals(ab(1, 3), 4)
        self.assertEquals(ab(-1, 2), 1)
        self.assertEquals(ab('aa', 'bb'), 'aabb')
        with self.assertRaises(TypeError):
            ab(1, 's')

class Task2Test(TestCase):
    def test_task2__should_return__ab_multiplied(self):
        ab_mock = Mock()
        ab_mock.return_value = 4
        with patch('apps.movies.tasks.ab', ab_mock):
            self.assertEqual(task2(13, 33), 8)


class TestParseMovies(TestCase):
    def test_parse_movies__should_return_text(self):
        with requests_mock.Mocker() as m:
            m.get('https://www.imdb.com/title/tt0000001/', text='resp')
            self.assertEquals(parse_movies() == 'aasd')