#!/bin/bash

service postgresql start
sleep 5
su postgres -c "createuser dynamease"


