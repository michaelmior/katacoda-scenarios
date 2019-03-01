#!/bin/sh
clear
until (clear && echo 'Please wait...' && cat data.js | docker exec -i mongo mongo --quiet) 2> /dev/null; do sleep 5; done
cat population.json | docker exec -i mongo mongoimport --jsonArray -c pop
clear
docker exec -it mongo mongo --quiet
