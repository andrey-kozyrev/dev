#!/bin/bash

. defs.sh
./init.sh

VER=7.0.53

pushd $USR/opt

fetch_tar https://archive.apache.org/dist/tomcat/tomcat-7/v$VER/bin/apache-tomcat-$VER.tar.gz tomcat

link_lib tomcat

link_bin tomcat catalina.sh

update_env TOMCAT_HOME '$USR/lib/tomcat'

popd

