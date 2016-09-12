#!/bin/bash

. defs.sh
./init.sh

VER=5.6

pushd $USR/opt

fetch_tar https://www.percona.com/downloads/Percona-Server-$VER/Percona-Server-$VER.31-77.0/binary/tarball/Percona-Server-$VER.31-rel77.0-Linux.x86_64.ssl101.tar.gz percona

link_lib percona

link_bin percona mysql
link_bin percona mysqladmin

update_env PERCONA_HOME '$USR/lib/percona'

popd

