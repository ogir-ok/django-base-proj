IMPORTANT STEPS !!!

1- Go To The Directory : dz11-django-base-proj --> apps --> movies --> movies_contents And Add These Files :

* title.basic.tsv.gz, * title.principals.tsv.gz, * name.basic.tsv.gz

NOTICE THAT YOU NEED TO EXTRACT THEM INSIDE MOVIES_CONTENTS DIRECTORY IN ORDER TO RUN YOUR PROGRAM AS WELL.


________________________________________________________________________________________________

2- Make Sure To Add The Movies App Which Is In Base.py --> Installed_Apps --> To The End Of The List : 'apps.movies.apps.MoviesConfig',

________________________________________________________________________________________________


3- Install The requirements by PyCharm Or By Writing : pip install -r requirements.txt


________________________________________________________________________________________________


4- You Need To Go To " apps --> movies --> management --> commands " And Find The Files : load_movies, load_persons, load_ person_movies. Then Change The Directory There : def handle(self, *args, **options): chdir('Set Your movies_contents path directory')

________________________________________________________________________________________________

5- The Commands Are Available Is :

./manage.py load_movies
./manage.py load_persons
./manage.py load_person_movies

as You Can Use -h As Help :
./manage.py load_movies -h
./manage.py load_persons -h
./manage.py load_person_movies -h
if you Run The Commands And The Program Does Not Exists Any Of These Files

You Will Get An Error Message Says The File Does Not Found.

___________________________________________________________________________________________________

ERROR THAT MAYBE WILL YOU WILL HAVE :
import psycopg2 modulenotfounderror: no module named 'psycopg2'

TO FIX THAT ISSUE YOU NEED TO MIGRATE FROM DOCKER :

1- docker-compose up
2- docker exec -it dz11-django-base-proj_web_1 bash
3- python3 manage.py migrate | ./manage.py migrate
4- The nGo Back And Retry.


_________END OF THE README FILE :)
