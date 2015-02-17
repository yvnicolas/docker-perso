#
#   To have an aerogear server
#

FROM jboss
MAINTAINER kevin.moreau@dynamease.com

RUN wget https://github.com/aerogear/aerogear-unifiedpush-server/releases/download/1.0.2/aerogear-unifiedpush-server-1.0.2-dist.tar.gz

ENV AEROGEAR_FILES /usr/local/share/aerogear
ENV JBOSS_HOME /usr/local/share/jboss

RUN mkdir $AEROGEAR_FILES

RUN mv aerogear-unifiedpush-server-1.0.2-dist.tar.gz /usr/local/share/aerogear

RUN tar -xvf $AEROGEAR_FILES/aerogear-unifiedpush-server-1.0.2-dist.tar.gz -C $AEROGEAR_FILES

RUN mv $AEROGEAR_FILES/aerogear-unifiedpush-server-1.0.2 $AEROGEAR_FILES/aerogear-server

ENV DEPLOYMENTS /usr/local/share/jboss/standalone/deployments/
ENV AEROGEAR_SERVER $AEROGEAR_FILES/aerogear-server

RUN cp $AEROGEAR_SERVER/databases/unifiedpush-h2-ds.xml $DEPLOYMENTS/

RUN mkdir -p $JBOSS_HOME/standalone/data/unifiedpush

COPY ./data/unifiedpush.h2.db $JBOSS_HOME/standalone/data/

RUN cp $AEROGEAR_SERVER/servers/unifiedpush-auth-server.war $DEPLOYMENTS/
RUN cp $AEROGEAR_SERVER/servers/unifiedpush-server-as7.war $DEPLOYMENTS/

CMD ["/usr/local/share/jboss/bin/standalone.sh","-b","0.0.0.0"]
