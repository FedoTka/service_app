FROM python:3.9-alpine3.18

COPY requirements.txt /temp/requirements.txt
COPY service /service
WORKDIR /service
EXPOSE 9000

#RUN pip install -r /temp/requirements.txt

RUN apk add postgresql-client build-base postgresql-dev


RUN pip install -r /temp/requirements.txt

RUN adduser --disabled-password service-user


USER service-user
