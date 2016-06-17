#!/bin/bash
. init.sh $1

VER=1.6.2

pushd $USR/opt

fetch_tar https://storage.googleapis.com/golang/go$VER.linux-amd64.tar.gz go

link_lib go

link_bin go go
link_bin go godoc
link_bin go gofmt

update_env GOROOT '$USR/lib/go'
update_env GOPATH '$USR/src/go'

popd

