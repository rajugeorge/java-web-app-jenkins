#!/bin/bash

echo "*****************************"
echo " Push docker image to hub    "
echo "*****************************"

echo "Logging in to docker hub"
docker login -u heppiedoc -p $PASS

echo "Tag docker image"
docker tag webapp:$BUILD_TAG heppiedoc/sampleapp:$BUILD_TAG

echo "Push docker image to Hub"
docker push heppiedoc/sampleapp:$BUILD_TAG

