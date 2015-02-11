#!/bin/bash
#initAerogear.sh

$JBOSS_HOME/bin/standalone.sh & 
PID=$!
sleep 5

sh $JBOSS_HOME/bin/jboss-cli.sh --file=$AEROGEAR_SERVER/databases/h2-database-config.cli

kill -9 $PID

ps 
