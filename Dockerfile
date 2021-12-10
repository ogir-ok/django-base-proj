FROM python:3.10
ADD . /src
WORKDIR /src
RUN pip install -r /src/requirements.txt
RUN apt-get update; apt-get install -y postgresql-client; rm -rf /var/cache/apt