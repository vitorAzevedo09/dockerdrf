# syntax=docker/dockerfile:1
FROM python:3

RUN apt-get update

COPY requirements/base.txt requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./flasede/ .

WORKDIR .
