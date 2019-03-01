#!/bin/sh
echo 'db.country.insert([' > data.js
curl -s 'https://raw.githubusercontent.com/ozlerhakan/mongodb-json-files/master/datasets/country.json' | sed 's/{"$oid":\("[^"]*"\)}/ObjectId(\1)/;s/$/,/' >> data.js
echo '])' >> data.js
# echo 'db.pop.insert([' >> data.js
# curl  -s https://pkgstore.datahub.io/core/population/population_json/data/43d34c2353cbd16a0aa8cadfb193af05/population_json.json | sed 's/^\[//;s/\]$//' >> data.js
# echo '])' >> data.js
docker run --detach --name=mongo --volume $(pwd):/host mvertes/alpine-mongo:4.0.1-0
