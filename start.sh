#!/usr/bin/env bash

set -x

git pull
docker build -t qinglu/nginx .
docker rm -f qinglu-nginx
docker run --name qinglu-nginx -p 80:80 -p 443:443 -v $(pwd)/src:/usr/share/nginx/html:ro -d qinglu/nginx
