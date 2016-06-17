#!/bin/bash

. defs.sh
./init.sh

VER=3.3.9

pushd $USR/opt

fetch_tar https://archive.apache.org/dist/maven/maven-3/$VER/binaries/apache-maven-$VER-bin.tar.gz maven

link_lib maven

link_bin maven mvn

update_env M2_HOME '$USR/lib/maven'
update_env M2 '$USR/lib/maven/bin'
update_env MAVEN_OPTS '"-Xms2g -Xmx2g"'

popd

