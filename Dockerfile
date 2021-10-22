FROM python:3.10
ADD . /src
WORKDIR /src
RUN pip install -r /src/requirements.txt