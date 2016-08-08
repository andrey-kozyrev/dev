#!/bin/bash

. defs.sh
./init.sh

mkdir -p ~/.nvm

VER=v0.31.4

pushd $USR/opt

fetch_tar https://github.com/creationix/nvm/archive/v0.31.4.tar.gz nvm

link_lib nvm

update_env NVM_HOME '$USR/lib/nvm'
update_env NVM_DIR '~/.nvm'
update_src '$NVM_HOME/nvm.sh'

popd

