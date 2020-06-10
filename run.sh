#! /bin/bash

NAME=nginx-certbot-dnsimple
IMAGE=nrandell/$NAME

docker pull ${IMAGE}:latest

docker run \
    --name nginx \
    --rm \
    -it \
    --env-file $PWD/nginx.env \
    --link dashboard:dashboard \
    -v $PWD/letsencrypt:/etc/letsencrypt:rw \
    -v $PWD/dnsimple.ini:/etc/dnsimple.ini:ro \
    -v $PWD/config.d:/etc/nginx/conf.d:rw \
    -p 443:443 \
    ${IMAGE}:latest

