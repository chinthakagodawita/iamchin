#!/usr/bin/env bash

set -o nounset

CWDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )/../" && pwd )

# Ensure run location.
if [[ ! -e "${CWDIR}/Dockerfile" ]]; then
  echo "Please run this from the repository root."
  exit 1
fi

docker pull nginx
docker build -t chinthakagodawita/iamchin .
docker rm -f iamchin
exec docker run -d --name="iamchin" -p 80:80 --restart="always" \
  chinthakagodawita/iamchin
