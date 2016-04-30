#!/bin/bash
set -e

echo "** Building Backend"

pushd backend
./build.sh
popd > /dev/null

echo "** Building Frontend"
pushd frontend
./build.sh
popd > /dev/null

echo "** Tagging Image"
./tag.sh

echo "** Pushing Image"
./push.sh
