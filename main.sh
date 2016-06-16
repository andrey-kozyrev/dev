#!/bin/bash
USR_ROOT=$1
export USR_ROOT=${USR_ROOT:-`pwd`/sandbox}
export USR_SRC=$USR_ROOT/src
export USR_OPT=$USR_ROOT/opt
export USR_LIB=$USR_ROOT/lib
export USR_BIN=$USR_ROOT/bin

echo "init $USR_ROOT"
mkdir -p $USR_SRC $USR_OPT $USR_LIB $USR_BIN

