#!/bin/bash

set -e
export DOCKER_TLS_VERIFY="1"
export COMPOSE_TLS_VERSION=TLSv1_2
export DOCKER_HOST="tcp://report.covid-ref.openlmis.org:2376"
export DOCKER_CERT_PATH=/home/ubuntu/.docker/machine/machines/covid-ref-reporting-stack

/usr/local/bin/docker-compose kill
/usr/local/bin/docker-compose down -v
/usr/local/bin/docker-compose up --build --force-recreate -d --scale scalyr=0