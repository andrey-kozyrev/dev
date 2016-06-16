#!/bin/bash
. init.sh $1

VER=3.5

pushd $USR/opt

wget https://archive.apache.org/dist/cassandra/$VER/apache-cassandra-$VER-bin.tar.gz
tar -xf apache-cassandra*
rm *.tar.gz

cd $USR/lib
ln -s ../opt/`ls ../opt | grep cassandra` cassandra

cd $USR/lib/cassandra/bin
rm *.bat

cd $USR/bin
ln -s ../lib/cassandra/bin/nodetool nodetool
ln -s ../lib/cassandra/bin/cqlsh cqlsh

cd $USR
echo 'export CASSANDRA_HOME=$USR/lib/cassandra' >> .env
echo 'export CASSANDRA_INCLUDE=$USR/lib/cassandra/bin/cassandra.in.sh' >> .env

source .env

popd

