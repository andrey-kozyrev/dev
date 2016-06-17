#!/bin/bash

source init.sh $1

BLD=2.11
VER=0.10.0.0

pushd $USR/opt

fetch_tar https://archive.apache.org/dist/kafka/$VER/kafka_$BLD-$VER.tgz kafka

link_lib kafka

update_env KAFKA_HOME '$USR/lib/kafka'

source .env

popd

