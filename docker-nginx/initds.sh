#!/bin/bash

#initds.sh

NGINX_LOG="/var/log/nginx"
ERROR_LOG="$NGINX_LOG/error.log"
ACCESS_LOG="$NGINX_LOG/access.log"

NGINX_PATH="/etc/nginx"
AVAILABLE="$NGINX_PATH/sites-available"
ENABLED="$NGINX_PATH/sites-enabled"

rm $ENABLED/*

for file in $(ls $AVAILABLE); do
    echo $file
    ln -s $AVAILABLE/$file $ENABLED/$file
done

ls $ENABLED

service nginx restart

tail -f $ERROR_LOG & tail -f $ACCESS_LOG  
