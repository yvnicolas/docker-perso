#
#   Dockerfile to execute jboss
#

FROM ubuntu:14.04
MAINTAINER kevin.moreau@dynamease.com

USER root

### Initiate all version ###
ENV JDK_VERSION 7
ENV JBOSS_VERSION as-7.1.1.Final
ENV JBOSS_VERSION_NUMBER 7.1

### Installation of some utils libraries ###
RUN sudo apt-get update && apt-get install -y curl unzip openjdk-$JDK_VERSION-jdk

### Get the jboss server ###
RUN curl -L  http://download.jboss.org/jbossas/$JBOSS_VERSION_NUMBER/jboss-$JBOSS_VERSION/jboss-$JBOSS_VERSION.zip -o jboss-$JBOSS_VERSION.zip 


### Install the Jboss Server ###
RUN unzip jboss-$JBOSS_VERSION.zip && rm jboss-$JBOSS_VERSION.zip && mv jboss-$JBOSS_VERSION /usr/local/share/jboss

### Set the environment variable JBOSS_HOME ###
ENV JBOSS_HOME /usr/local/share/jboss

### Open the port 8080 for the jboss server access ###
EXPOSE 8080 
