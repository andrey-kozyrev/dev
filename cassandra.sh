#!/bin/bash

. defs.sh
./init.sh

VER=3.5

pushd $USR/opt

fetch_tar https://archive.apache.org/dist/cassandra/$VER/apache-cassandra-$VER-bin.tar.gz cassandra

link_lib cassandra

link_bin cassandra nodetool
link_bin cassandra cqlsh

update_env CASSANDRA_HOME '$USR/lib/cassandra'
update_env CASSANDRA_INCLUDE '$USR/lib/cassandra/bin/cassandra.in.sh'

popd

