#!/bin/bash

e='development'
if [ ! -z "$1" ] 
then
  e="$1"
fi
export APP_ENV=$e
cd spidock
docker-compose stop firefox
docker-compose run -e APP_ENV=${APP_ENV} spider
docker-compose stop firefox
