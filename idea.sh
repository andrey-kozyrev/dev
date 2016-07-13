#!/bin/bash

. defs.sh
./init.sh

VER=2016.2

pushd $USR/opt

fetch_tar https://download.jetbrains.com/idea/ideaIC-$VER.tar.gz idea

link_lib idea

popd

