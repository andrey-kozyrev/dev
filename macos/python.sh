#!/bin/bash

. defs.sh
./init.sh

VER=2.7.10

pushd $USR/tmp

wget https://www.python.org/ftp/python/$VER/python-$VER-macosx10.6.pkg

sudo installer -pkg python-$VER-macosx10.6.pkg -target /
rm *

#update_env PYTHON_HOME '$USR/lib/python'

popd

