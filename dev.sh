#!/usr/bin/bash

docker kill carl-websites || true
docker rm carl-websites || true
docker run \
  -d \
  -v "~/certs/bigbraincarl.com/fullchain1.pem:/certs/bigbraincarl.com.pem" \
  -v "~/certs/bigbraincarl.com/privkey1.pem:/certs/bigbraincarl.com.key.pem" \
  -p 80:80 \
  -p 443:443 \
  --name carl-websites \
  carl-websites
