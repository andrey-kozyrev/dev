#!/bin/bash

. ./defs.sh
./init.sh

VER=1.8.0

pushd $USR/bin

curl -L https://github.com/docker/compose/releases/download/$VER/docker-compose-`uname -s`-`uname -m` > compose
chmod +x compose

popd
compose --version
