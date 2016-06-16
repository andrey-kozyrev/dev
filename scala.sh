#!/bin/bash
. init.sh $1

VER=2.11.8

pushd $USR/opt

wget http://downloads.lightbend.com/scala/$VER/scala-$VER.tgz
tar -xf scala*
rm *.tgz

cd $USR/lib
ln -s ../opt/`ls ../opt | grep scala` scala

cd $USR/bin
ln -s ../lib/scala/bin/scala scala
ln -s ../lib/scala/bin/scalac scalac
ln -s ../lib/scala/bin/scaladoc scaladoc
ln -s ../lib/scala/bin/scalap scalap

echo "export SCALA_HOME=$USR/lib/scala" >> $USR/.env

popd

