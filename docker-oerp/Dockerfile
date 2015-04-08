#
#   Dockerfile to execute OpenERP
#

FROM ubuntu:14.04
MAINTAINER kevin.moreau@dynamease.com

USER root

### Initiate all version ###
ENV PATH_OERP openERP

### Installation of some utils libraries ###
RUN sudo apt-get update && apt-get install -y postgresql curl python-virtualenv postgresql-server-dev-9.3 bzr

RUN mkdir $PATH_OERP

RUN cd $PATH_OERP

RUN bzr branch lp:ocb-server/7.0 $PATH_OERP/server
RUN bzr branch lp:ocb-addons/7.0 $PATH_OERP/addons
RUN bzr branch lp:ocb-web/7.0 $PATH_OERP/web
RUN bzr branch lp:server-env-tools $PATH_OERP/server-env-tools


RUN apt-get install -y python-dateutil python-docutils python-feedparser python-gdata \
python-jinja2 python-ldap python-libxslt1 python-lxml python-mako python-mock python-openid \
python-psycopg2 python-psutil python-pybabel python-pychart python-pydot python-pyparsing \
python-reportlab python-simplejson python-tz python-unittest2 python-vatnumber python-vobject \
python-webdav python-werkzeug python-xlwt python-yaml python-zsi


COPY init.sh /init.sh
COPY config-70 /

EXPOSE 8069

RUN adduser dynamease --disabled-password
RUN echo "dynamease:fontenelles" | chpasswd

RUN ./init.sh
