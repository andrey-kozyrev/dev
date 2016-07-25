#!/bin/bash

export DEV=${1:-`pwd`}
export USR=$DEV/usr

delete_link() {
  if [ -h $1 ]
    then
      rm $1
  fi
}

fetch_tar() {
  cd $USR/opt
  rm -rf $2*
  wget $1
  extract_tar $2
}

extract_tar() {
  cd $USR/opt
  tar -xf $1*
  rm $1* 2>/dev/null
}

link_lib() {
  cd $USR/lib
  delete_link $1
  ln -s ../opt/`ls ../opt | grep $1` $1
}

link_bin() {
  cd $USR/bin
  delete_link $2
  ln -s ../lib/$1/bin/$2* $2
}

update_env() {
  cd $USR
  sed -i "/$1/d" .env
  echo "export $1=$2" >> .env
}

