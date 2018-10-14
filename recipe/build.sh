#!/bin/bash

conda create -yp ./bootstrap maven=3.5.0

target=$PREFIX/opt/maven
mkdir -p $target

./bootstrap/bin/mvn -DdistributionTargetDir="$target" -Drat.ignoreErrors=true clean package

cd $PREFIX/bin
ln -s ../opt/maven/bin/* .
