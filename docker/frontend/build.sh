#!/bin/bash
set -e

pushd frontend
npm install
bower install
grunt jshint concat copy
popd

docker build -t spring2885-frontend .
