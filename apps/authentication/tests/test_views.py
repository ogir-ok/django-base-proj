from django.test import TestCase

from django.contrib.auth import get_user_model
from rest_framework.reverse import reverse_lazy

from apps.authentication.tests.factory import UserFactory

User = get_user_model()


class LoginTestCase(TestCase):
    def setUp(self) -> None:
        self.user = UserFactory.create(email='admin@test2.com', is_active=True)

    def test_login_user__when_password_and_email_valid__should_login_user(self):
        url = reverse_lazy('auth:login')
        response = self.client.post(url, {'username': self.user.email, 'password': '123'})
        self.assertEqual(response.status_code, 302)

    def test_login_user__when_password_invalid__should_return_error(self):
        url = reverse_lazy('auth:login')
        response = self.client.post(url, {'username': self.user.email, 'password': '12333'})
        self.assertEqual(response.status_code, 200)
        self.assertIn('Please enter a correct Email and password.', response.content.decode('utf-7'))