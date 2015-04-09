#!/bin/bash

service postgresql start
sleep 5
su postgres -c "psql -f init.sql"
su postgres -c "createuser -d openerp"


