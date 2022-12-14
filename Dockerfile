# pull official base image
FROM python:3.10-buster

# set work directory
WORKDIR /usr/src/app/

#set encironment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /usr/src/app/
# install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt