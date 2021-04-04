#!/bin/bash

target=$PREFIX/opt/maven
mkdir -p $target
mkdir -p $PREFIX/bin

cp -r * $target
cd $PREFIX/bin
ln -s ../opt/maven/bin/* .

rm -fr $target/lib/ext/
