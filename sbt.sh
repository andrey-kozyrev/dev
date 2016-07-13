#!/bin/bash

. defs.sh
./init.sh

VER=0.13.11

pushd $USR/opt

fetch_tar https://dl.bintray.com/sbt/native-packages/sbt/$VER/sbt-$VER.tgz sbt

link_lib sbt

link_bin sbt sbt

update_env SBT_HOME '$USR/lib/sbt'
update_env SBT_OPTS '"-Xms2g -Xmx2g -XX:MaxPermSize=512M -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC"'

popd

