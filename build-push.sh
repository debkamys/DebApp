#!/bin/bash


# Set the color for output
magenta='\033[0;35m'
cyan='\033[0;36m'
# Clear color
clear='\033[0m'



echo -e "${magenta}Let's build the code!${clear}" && sleep 1

dotnet build && sleep 2



echo -e "${cyan}Let's test the code!${clear}" && sleep 1

dotnet test && sleep 2



echo -e "${magenta}Let's publish the code!${clear}" && sleep 1

dotnet publish -c Release && sleep 2



echo -e "${cyan}Let's build an image!${clear}" && sleep 1

docker build -t debtest-image -f Dockerfile . && sleep 2



echo -e "${magenta}Let's tag that image!${clear}" && sleep 1

docker tag debtest-image gcr.io/gke-deb/debtest-image && sleep 2



echo -e "${cyan}Let's push that image to an external container registry!" && sleep 1

docker push gcr.io/gke-deb/debtest-image


echo -e "${magenta}ALL DONE!!!${clear}"
