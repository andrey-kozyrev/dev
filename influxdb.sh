#!/bin/bash

. defs.sh
./init.sh

VER=1.0.0

pushd $USR/opt

fetch_tar https://dl.influxdata.com/influxdb/releases/influxdb-${VER}_linux_amd64.tar.gz influxdb

link_lib influxdb

cd $USR/lib/influxdb
mkdir -p bin
cd bin
mv ../usr/bin/* .

link_bin influxdb influx

popd

