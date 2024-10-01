#!/bin/bash

##

reset

clear

##

set -e

set -x

##

docker compose pull

docker compose down --remove-orphans

docker compose up -d

