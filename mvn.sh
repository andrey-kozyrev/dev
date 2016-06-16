#!/bin/bash
. init.sh $1

VER=3.3.9

pushd $USR_ROOT/opt

wget https://archive.apache.org/dist/maven/maven-3/$VER/binaries/apache-maven-$VER-bin.tar.gz
tar -xf apache-maven*
rm *.tar.gz

cd $USR_ROOT/lib
ln -s ../opt/`ls ../opt | grep apache-maven` maven

cd $USR_ROOT/bin
ln -s ../lib/maven/bin/mvn mvn

popd

