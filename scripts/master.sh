#!/bin/bash

#sudo ./docker-install.sh

#docker pull sonarqube
#docker run  -p 9000:9000 --rm --name mysonar sonarqube


sudo docker run -d --name sonarqube -p 9000:9000 sonarqube
cd jenkins
#sudo ./jenkins-install.sh
docker build -t jenkins .
docker run -p 8080:8080  --name jenkins -e SONARQUBE_HOST=http://$(cat ip-address.txt):9000 myjenkins:latest

#sudo docker run -d --name sonarqube -p 9000:9000 sonarqube:7.5-community 
sudo docker run -it -p 8888:8080 tomcat:9.0


