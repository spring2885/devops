#!/bin/bash
CONTAINER_ID=$1

docker exec -i -t ${CONTAINER_ID} bash
