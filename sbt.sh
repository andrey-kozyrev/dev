#!/bin/bash
. init.sh $1

VER=0.13.11

pushd $USR/opt

wget  https://dl.bintray.com/sbt/native-packages/sbt/$VER/sbt-$VER.tgz
tar -xf sbt*
rm *.tgz

cd $USR/lib
ln -s ../opt/`ls ../opt | grep sbt` sbt

cd $USR/bin
ln -s ../lib/sbt/bin/sbt sbt

popd

