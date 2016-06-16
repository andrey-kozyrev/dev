#!/bin/bash
. init.sh $1

VER=1.6.2

pushd $USR_ROOT/opt

wget https://storage.googleapis.com/golang/go$VER.linux-amd64.tar.gz
tar -xf go*
rm *.tar.gz

cd $USR_ROOT/lib
ln -s ../opt/`ls ../opt | grep go` go

cd $USR_ROOT/bin
ln -s ../lib/go/bin/go go
ln -s ../lib/go/bin/godoc godoc
ln -s ../lib/go/bin/gofmt gofmt

popd

