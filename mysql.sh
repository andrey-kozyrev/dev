#!/bin/bash

. defs.sh
./init.sh

VER=5.6

pushd $USR/opt

fetch_tar https://dev.mysql.com/get/Downloads/MySQL-$VER/mysql-$VER.32-osx10.11-x86_64.tar.gz mysql

link_lib mysql

link_bin mysql mysql
link_bin mysql mysqladmin

update_env MYSQL_HOME '$USR/lib/mysql'

popd

