#!/bin/sh

until docker exec -it mongo mongo; do sleep 5; clear; done
