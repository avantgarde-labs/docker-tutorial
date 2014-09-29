#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Build image
docker build -t="avgl/elasticsearch" .

# start container
docker run -d -p 9200:9200 -p 9300:9300 --name avgl-es avgl/elasticsearch