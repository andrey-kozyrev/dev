#!/bin/bash

. defs.sh
./init.sh

VER=0.28.2

pushd $USR/opt

fetch_tar http://archive.apache.org/dist/mesos/${VER}/mesos-${VER}.tar.gz mesos

link_lib mesos

update_env MESOS_HOME '$USR/lib/mesos'

popd

