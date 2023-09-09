FROM python:2-alpine
MAINTAINER sricharank

WORKDIR /usr/src/app

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app.py .
