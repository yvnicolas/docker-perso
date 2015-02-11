#!/bin/bash
#Exec the aerogear services

cp -v $AEROGEAR_SERVER/servers/unifiedpush-auth-server.war $DEPLOYMENTS/
cp -v $AEROGEAR_SERVER/servers/unifiedpush-server-as7.war $DEPLOYMENTS/

$JBOSS_HOME/bin/standalone.sh -b 0.0.0.0