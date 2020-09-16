FROM jenkinsci/blueocean

MAINTAINER Aqil Shaikh

#get rid of admin password setup
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

#automatically installing all plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
#adding scripts
#COPY groovy/* /usr/share/jenkins/ref/init.groovy.d/

