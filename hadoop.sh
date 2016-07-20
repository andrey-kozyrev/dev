#!/bin/bash

. defs.sh
./init.sh

VER=2.7.2

pushd $USR/opt

fetch_tar https://archive.apache.org/dist/hadoop/core/hadoop-$VER/hadoop-$VER.tar.gz hadoop

link_lib hadoop

link_bin hadoop hadoop
link_bin hadoop hdfs
link_bin hadoop mapred
link_bin hadoop yarn

update_env HADOOP_HOME '$USR/lib/hadoop'
update_env HADOOP_LIBEXEC_DIR '$HADOOP_HOME/libexec'
update_env HADOOP_CONF_DIR '$HADOOP_HOME/etc/hadoop'

popd

