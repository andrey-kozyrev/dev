#!/bin/bash

. defs.sh
./init.sh

VER=2.1.13

pushd $USR/opt

fetch_tar https://archive.apache.org/dist/cassandra/$VER/apache-cassandra-$VER-bin.tar.gz cassandra

link_lib cassandra

link_bin cassandra nodetool
link_bin cassandra cqlsh

update_env CASSANDRA_HOME '$USR/lib/cassandra'
update_env CASSANDRA_CONF '$CASSANDRA_HOME/conf'
update_env CASSANDRA_INCLUDE '$CASSANDRA_HOME/bin/cassandra.in.sh'

popd

