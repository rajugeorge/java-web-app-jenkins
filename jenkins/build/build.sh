#!/bin/bash

echo "*********************"
echo " create the war file "
echo "*********************"
docker run --rm -w /app  -v  $PWD:/app -v $PWD/.m2/:/root/.m2/  maven:3-alpine mvn clean install
cp webapp/target/webapp.war jenkins/build/app.war

echo "*********************"
echo " create the docker file "
echo "*********************"


cd jenkins/build/ && docker-compose -f docker-compose.yml build --no-cache
