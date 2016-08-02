#!/bin/bash

. defs.sh
./init.sh

VER=3.4.8

pushd $USR/opt

fetch_tar https://archive.apache.org/dist/zookeeper/zookeeper-$VER/zookeeper-$VER.tar.gz zookeeper

link_lib zookeeper

link_bin zookeeper zkCli.sh
link_bin zookeeper zkEnv.sh

update_env ZOOKEEPER_HOME '$USR/lib/zookeeper'
update_env ZOOCFGDIR '$ZOOKEEPER_HOME/conf'
update_env ZOOBINDIR '$ZOOKEEPER_HOME/bin'

sed -i '' "/ZOOBIN=/d" $USR/lib/zookeeper/bin/zkCli.sh
sed -i '' "/ZOOBINDIR=/d" $USR/lib/zookeeper/bin/zkCli.sh

popd

