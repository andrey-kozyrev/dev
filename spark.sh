#!/bin/bash

. defs.sh
./init.sh

VER=1.6.2

pushd $USR/opt

fetch_tar https://archive.apache.org/dist/spark/spark-$VER/spark-$VER-bin-without-hadoop.tgz spark

link_lib spark

link_bin spark spark-shell
link_bin spark spark-sql
link_bin spark spark-submit
link_bin spark spark-class

update_env SPARK_HOME '$USR/lib/spark'
update_env SPARK_DIST_CLASSPATH '$(hadoop classpath)'

popd

