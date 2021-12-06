import os
from time import sleep

from invoke import task, exceptions, env

from django.conf import settings


DB_ARGS = f"-h {settings.DATABASES['default']['HOST']}" \
          f" -U {settings.DATABASES['default']['USER']}" \
          f" -p {settings.DATABASES['default']['PORT']}"


@task
def waitdb(ctx):
    while True:
        try:
            ctx.run(f"PGPASSWORD={settings.DATABASES['default']['PASSWORD']} psql {DB_ARGS} -c '\l'")
            return
        except exceptions.Failure:
            print('err')
            sleep(5)


@task
def dropdb(ctx):
    waitdb(ctx)
    ctx.run(f"PGPASSWORD={settings.DATABASES['default']['PASSWORD']} dropdb {DB_ARGS} movies")


@task
def createdb(ctx):
    waitdb(ctx)
    ctx.run(f"PGPASSWORD={settings.DATABASES['default']['PASSWORD']} createdb {DB_ARGS} movies")


@task
def makedump(ctx):
    waitdb(ctx)
    ctx.run(f"PGPASSWORD={settings.DATABASES['default']['PASSWORD']} pg_dump {DB_ARGS} {settings.DATABASES['default']['NAME']} > dump.sql")


@task
def loaddump(ctx):
    dropdb(ctx)
    createdb(ctx)
    ctx.run(f"PGPASSWORD={settings.DATABASES['default']['PASSWORD']} psql {DB_ARGS}  {settings.DATABASES['default']['NAME']} < dump.sql")


@task
def run(ctx):
    print('Migrating db')
    ctx.run('./manage.py migrate')
    print('Collecting static')
    ctx.run('./manage.py collectstatic --noinput')

    cmd = ('uwsgi --http 0.0.0.0:8000 --master '
           '--module "django.core.wsgi:get_wsgi_application()" '
           '--processes 2 '
           '--offload-threads 4 '
           '--enable-threads '
           '--static-map /static=/static')

    if os.getenv('PY_AUTORELOAD'):
        cmd += ' --py-autoreload 1'
    if os.getenv('BASICAUTH'):
        cmd += ' --route "^/ basicauth:SR,{0}"'.format(os.getenv('BASICAUTH'))
    if os.getenv('ENV') == 'dev':
        cmd += ' --honour-stdin'
    else:
        cmd += ' --harakiri 30'
    ctx.run(cmd)
