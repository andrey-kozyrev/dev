#!/bin/bash

source defs.sh
./init.sh

VER=2.14.1

pushd $USR/opt

fetch_tar https://services.gradle.org/distributions/gradle-$VER-bin.zip

link_lib gradle

link_bin gradle gradle

update_env GRADLE_HOME '$USR/lib/gradle'

popd

