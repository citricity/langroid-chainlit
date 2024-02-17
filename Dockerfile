FROM python:3.11

ENV SHELL=/bin/bash

WORKDIR /usr/app
COPY ./app.py /usr/app
COPY ./.env /usr/app
COPY ./requirements.txt /usr/app

RUN mkdir -p /root/.config/lancedb

# Install requirements using pip from the conda environment
RUN pip install --upgrade pip && pip install -r requirements.txt
