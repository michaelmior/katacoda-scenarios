#!/bin/sh
clear
until docker exec -it mongo mongo --quiet; do sleep 5; clear; done
