#
#   Dockerfile to execute nginx
#

FROM ubuntu:14.04
MAINTAINER kevin.moreau@dynamease.com

USER root

RUN apt-get update -y & apt-get install -y nginx

VOLUME /etc/nginx/sites-available

COPY ./default /etc/nginx/sites-available/default

EXPOSE 80

COPY ./initds.sh /usr/local/sbin/initds.sh

#ENTRYPOINT ["initds.sh"]
