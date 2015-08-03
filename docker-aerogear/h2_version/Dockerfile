#
#   To have an aerogear server
#

FROM aerogear/wildfly

MAINTAINER kevin.moreau@dynamease.com

ENV AEROGEAR_FILES /usr/local/share/aerogear
ENV JBOSS_HOME /usr/local/share/jboss

ENV DEPLOYMENTS /usr/local/share/jboss/standalone/deployments/
ENV AEROGEAR_SERVER $AEROGEAR_FILES/aerogear-server

ENV AEROGEAR_VERSION 1.0.2

RUN apt-get install -y wget

RUN wget https://github.com/aerogear/aerogear-unifiedpush-server/releases/download/$AEROGEAR_VERSION/aerogear-unifiedpush-server-$AEROGEAR_VERSION-dist.tar.gz

RUN mkdir $AEROGEAR_FILES

RUN mv aerogear-unifiedpush-server-$AEROGEAR_VERSION-dist.tar.gz /usr/local/share/aerogear

RUN tar -xvf $AEROGEAR_FILES/aerogear-unifiedpush-server-$AEROGEAR_VERSION-dist.tar.gz -C $AEROGEAR_FILES

RUN mv $AEROGEAR_FILES/aerogear-unifiedpush-server-$AEROGEAR_VERSION $AEROGEAR_FILES/aerogear-server

RUN cp $AEROGEAR_SERVER/databases/unifiedpush-h2-ds.xml $DEPLOYMENTS/

#RUN mkdir -p $JBOSS_HOME/standalone/data/unifiedpush


#COPY ./data $JBOSS_HOME/standalone/data
#COPY ./version/$AEROGEAR_VERSION/ag-push.war $AEROGEAR_SERVER/servers/unifiedpush-server-as7.war

RUN cp $AEROGEAR_SERVER/servers/unifiedpush-auth-server.war $DEPLOYMENTS/
RUN cp $AEROGEAR_SERVER/servers/unifiedpush-server-as7.war $DEPLOYMENTS/

VOLUME $JBOSS_HOME/standalone/data

CMD ["/usr/local/share/jboss/bin/standalone.sh","-b","0.0.0.0"]
