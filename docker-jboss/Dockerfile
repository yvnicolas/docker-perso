#
#   Dockerfile to execute jboss
#

FROM ubuntu:14.04
MAINTAINER kevin.moreau@dynamease.com

USER root

RUN sudo apt-get update && apt-get install -y wget curl unzip openjdk-7-jdk

RUN curl -L  http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.zip -o jboss-as-7.1.1.Final.zip 

RUN unzip jboss-as-7.1.1.Final.zip && mv jboss-as-7.1.1.Final /usr/local/share/jboss

RUN echo "JBOSS_HOME=/usr/local/share/jboss" >> /etc/bash.bashrc

VOLUME /usr/local/share/jboss/

EXPOSE 8080 8443 9990

#CMD ["/usr/local/share/jboss/bin/standalone.sh","-b","0.0.0.0"]
