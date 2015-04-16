#!/bin/bash

#initds.sh

NGINX_LOG="/var/log/nginx"
ERROR_LOG="$NGINX_LOG/error.log"
ACCESS_LOG="$NGINX_LOG/access.log"

service nginx restart

tail -f $ERROR_LOG & tail -f $ACCESS_LOG  
