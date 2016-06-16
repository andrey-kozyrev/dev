#!/bin/bash
. init.sh $1

VER=1.6.2

pushd $USR/opt

wget https://storage.googleapis.com/golang/go$VER.linux-amd64.tar.gz
tar -xf go*
rm *.tar.gz

cd $USR/lib
ln -s ../opt/`ls ../opt | grep go` go

cd $USR/bin
ln -s ../lib/go/bin/go go
ln -s ../lib/go/bin/godoc godoc
ln -s ../lib/go/bin/gofmt gofmt

cd $USR
echo "export GOROOT=$USR/lib/go" >> .env
echo "export GOPATH=$USR/src/go" >> .env

popd

