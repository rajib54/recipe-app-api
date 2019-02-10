FROM python:3.7-alpine
MAINTAINER Kazi Toufiq Hossain

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D toufiq
USER toufiq