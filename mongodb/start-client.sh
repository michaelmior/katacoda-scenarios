#!/bin/sh
clear
until (clear && docker exec -it mongo mongo --quiet) 2> /dev/null; do sleep 5; done
