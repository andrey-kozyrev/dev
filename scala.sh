#!/bin/bash
. init.sh $1

VER=2.11.8

pushd $USR/opt

fetch_tar http://downloads.lightbend.com/scala/$VER/scala-$VER.tgz scala

link_lib scala

link_bin scala scala
link_bin scala scalac
link_bin scala scaladoc
link_bin scala scalap

update_env SCALA_HOME '$USR/lib/scala'

popd

