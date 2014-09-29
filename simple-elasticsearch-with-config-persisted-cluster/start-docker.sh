#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Build image
docker build -t="avgl/elasticsearch" .

# start container
docker run -d -p 9200:9200 -p 9300:9300 -v /data/elasticsearch:/data --name avgl-es1 avgl/elasticsearch
docker run -d --name avgl-es2 avgl/elasticsearch
docker run -d --name avgl-es3 avgl/elasticsearch
docker run -d --name avgl-es4 avgl/elasticsearch
docker run -d --name avgl-es5 avgl/elasticsearch