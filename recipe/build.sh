#!/bin/bash

bin/mvn -Drat.skip=true install

target=$PREFIX/opt/maven
mkdir -p $target
mkdir -p $PREFIX/bin

tar -xvf "apache-maven/target/apache-maven-${PKG_VERSION}-bin.tar.gz" -C $target --strip-components=1

cd $PREFIX/bin
ln -s ../opt/maven/bin/* .

rm -fr $target/lib/ext/
