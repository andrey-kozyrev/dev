#!/bin/bash
. init.sh $1

VER=8u92
BUILD=b14

pushd $USR_ROOT/opt

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/$VER-$BUILD/jdk-$VER-linux-x64.tar.gz
tar -xf jdk*
rm *.tar.gz

cd $USR_ROOT/lib
ln -s ../opt/`ls ../opt | grep jdk` java

cd $USR_ROOT/bin
ln -s ../lib/java/bin/java java
ln -s ../lib/java/bin/javac javac
ln -s ../lib/java/bin/jar jar
ln -s ../lib/java/bin/jarsigner jarsigner
ln -s ../lib/java/bin/javadoc javadoc
ln -s ../lib/java/bin/javah javah
ln -s ../lib/java/bin/javaws javaws
ln -s ../lib/java/bin/jcmd jcmd
ln -s ../lib/java/bin/jconsole jconsole
ln -s ../lib/java/bin/jcontrol jcontrol
ln -s ../lib/java/bin/jvisualvm jvisualvm
ln -s ../lib/java/bin/keytool keytool

popd

