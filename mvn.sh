#!/bin/bash
. init.sh $1

VER=3.3.9

pushd $USR/opt

wget https://archive.apache.org/dist/maven/maven-3/$VER/binaries/apache-maven-$VER-bin.tar.gz
tar -xf apache-maven*
rm *.tar.gz

cd $USR/lib
ln -s ../opt/`ls ../opt | grep apache-maven` maven

cd $USR/bin
ln -s ../lib/maven/bin/mvn mvn

echo "export M2_HOME=$USR/lib/maven" >> .env
echo "export M2=$USR/lib/maven/bin" >> .env
echo 'export MAVEN_OPTS="-Xms2g -Xmx2g"' >> .env

popd

