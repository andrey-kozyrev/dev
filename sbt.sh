#!/bin/bash

. defs.sh
./init.sh

VER=0.13.11

pushd $USR/opt

fetch_tar https://dl.bintray.com/sbt/native-packages/sbt/$VER/sbt-$VER.tgz sbt

link_lib sbt

link_bin sbt sbt

popd

