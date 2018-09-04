#!/bin/sh
clear
until (clear && echo 'Please wait...' && docker exec -it mongo mongo --quiet --shell /host/country.js) 2> /dev/null; do sleep 5; done
