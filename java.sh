#!/bin/bash

source init.sh $1

VER=8u92
BUILD=b14

pushd $USR/opt
wget --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn-pub/java/jdk/$VER-$BUILD/jdk-$VER-linux-x64.tar.gz
extract_tar jdk

link_lib jdk

link_bin jdk java
link_bin jdk javac
link_bin jdk jar
link_bin jdk jarsigner
link_bin jdk javadoc
link_bin jdk javah
link_bin jdk javaws
link_bin jdk jcmd
link_bin jdk jconsole
link_bin jdk jcontrol
link_bin jdk jvisualvm
link_bin jdk keytool

update_env JAVA_HOME '$USR/lib/java'
update_env JAVA_OPTS '"-Xms2g -Xmx4g"'

popd

