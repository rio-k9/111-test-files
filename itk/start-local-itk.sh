#!/usr/bin/env bash

set -e

LIGHT_GREEN='\033[1;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "${LIGHT_GREEN}Running container${NC}"

docker-compose -f docker-compose.yml up -d;