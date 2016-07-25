#!/bin/bash

. defs.sh
./init.sh

DOCKER_MACHINE_VER=v0.8.0-rc2

pushd $USR/opt

rm -rf docker-machine*
mkdir -p docker-machine-$DOCKER_MACHINE_VER/bin
pushd $USR/opt/docker-machine-$DOCKER_MACHINE_VER/bin
wget https://github.com/docker/machine/releases/download/$DOCKER_MACHINE_VER/docker-machine-`uname -s`-`uname -m`
chmod +x docker-machine*
popd

link_lib docker-machine

link_bin docker-machine docker-machine

popd

