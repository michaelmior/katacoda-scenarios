#!/bin/sh
clear
until (clear && echo 'Please wait...' && cat data.js | docker exec -i mongo mongo --quiet) 2> /dev/null; do sleep 5; done
docker exec -it mongo mongo --quiet
