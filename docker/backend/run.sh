#!/bin/bash
set -e

HOST_MYSQL_IP=$(hostname -I | awk '{print $1}')
echo "Local IP address: ${HOST_MYSQL_IP}"

echo "Starting docker backend container"

docker run -it \
  --rm \
  --name spring2885-backend \
  -v /home/rcleveng/secure/application-prod.properties:/config/application-prod.properties \
  -e SPRING_PROFILES_ACTIVE=prod \
  --add-host=mysql:${HOST_MYSQL_IP} \
  -p 8080:8080 \
  spring2885-backend
