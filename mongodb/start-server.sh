#!/bin/sh
echo 'db.country.insert([' > country.js
curl -s 'https://raw.githubusercontent.com/ozlerhakan/mongodb-json-files/master/datasets/country.json' | sed 's/{"$oid":\("[^"]*"\)}/ObjectId(\1)/;s/$/,/' >> country.js
echo '])' >> country.js
docker run --detach --name=mongo --volume $(pwd):/host mvertes/alpine-mongo:4.0.1-0
