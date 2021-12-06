#!/bin/bash

echo "I'm building the code!"

dotnet build


echo "I'm testing the code!"

dotnet test


echo "I'm publishing the code!"

dotnet publish -c Release


echo "I'm building my image!"

docker build -t debtest-image -f Dockerfile .


echo "I'm tagging my image!"

docker tag debtest-image gcr.io/gke-deb/debtest-image


echo "I'm pushing my image to an external container registry!"

docker push gcr.io/gke-deb/debtest-image
