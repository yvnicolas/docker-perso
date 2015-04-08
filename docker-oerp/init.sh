#!/bin/bash

service postgresql start
sleep 20
su postgres
createuser dynamease

sleep 10

/openERP/server/openerp-server -c /openERP/config-70
