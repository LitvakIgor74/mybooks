FROM python:3.9.5

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
RUN pip install pipenv && pip install --upgrade pipenv

WORKDIR /mybooks

COPY Pipfile Pipfile.lock /mybooks/
RUN pipenv install

COPY . /mybooks/