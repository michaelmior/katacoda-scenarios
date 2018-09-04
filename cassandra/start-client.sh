#!/bin/sh
clear
until (clear && echo 'Please wait...' && docker exec -it cassandra cqlsh) 2> /dev/null; do sleep 5; done
