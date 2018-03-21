#!/bin/sh

GOCD_VERSION=$1
DOCKER_CE_PACKAGE=$2
TAG=$3

if [[ ( $GOCD_VERSION = "" ) || ( $DOCKER_CE_PACKAGE = "" ) || ( $TAG = "" ) ]]; then
    echo "Usage: ./build.sh [GoCD_version] [Docker_CE_apt_package_version] [Tag]"
    echo "Example: ./build.sh v18.2.0  17.12.0~ce-0~ubuntu gocd-18.2.0-ubuntu-16.04-docker-17.12"
    exit 1
fi;

docker build --build-arg GOCD_VERSION=$GOCD_VERSION \
             --build-arg DOCKER_CE_PACKAGE=$DOCKER_CE_PACKAGE \
             -t hpcsc/gocd-agent-dind:$TAG \
             .
