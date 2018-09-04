#!/bin/sh
clear
until (clear && echo 'Please wait...' && docker exec -it mongo mongo --quiet) 2> /dev/null; do sleep 5; done
