#
#   Dockerfile to execute nginx
#

FROM ubuntu:14.04
MAINTAINER kevin.moreau@dynamease.com

USER root

RUN apt-get update -y & apt-get install -y nginx

VOLUME /etc/nginx/sites-available
VOLUME /etc/nginx/keys
VOLUME /var/log/nginx

RUN touch /var/log/nginx/error.log
RUN touch /var/log/nginx/access.log

COPY ./default /etc/nginx/sites-available/default

EXPOSE 80
EXPOSE 443

COPY ./initds.sh /usr/local/sbin/initds.sh

ENTRYPOINT ["initds.sh"]
