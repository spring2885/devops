#!/bin/bash
set -e

# Build the backend jar.
pushd backend/server
./mvnw package
popd

# Build the docker image.
docker build -t spring2885-backend .
