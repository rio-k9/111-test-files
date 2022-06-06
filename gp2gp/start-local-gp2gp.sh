#!/usr/bin/env bash

set -e
source vars.sh

if [ -f "vars.sh" ]; then
    source vars.sh
else
  echo "No vars.sh define. Using docker-compose defaults."
fi
if [[ "$(docker network ls | grep "commonforgp2gp")" == "" ]] ; then
    docker network create commonforgp2gp
fi

docker pull nhsdev/nia-gpc-consumer-adaptor:0.3.3
docker pull nhsdev/nia-gp2gp-adaptor:1.5.0


docker-compose up
#docker network rm commonforgp2gp


