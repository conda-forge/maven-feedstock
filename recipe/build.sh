#!/bin/bash

# JDK TLS (AES/GHASH intrinsics) fails under qemu emulation with
# "bad_record_mac" when Maven downloads from Maven Central
if [[ "${target_platform}" == "linux-ppc64le" ]]; then
    export MAVEN_OPTS="${MAVEN_OPTS} -XX:+UnlockDiagnosticVMOptions -XX:-UseAESIntrinsics -XX:-UseAESCTRIntrinsics -XX:-UseGHASHIntrinsics"
fi

mamba create -yp ./bootstrap maven=3.9.1

./bootstrap/bin/mvn -Drat.ignoreErrors=true install

target=$PREFIX/opt/maven
mkdir -p $target
mkdir -p $PREFIX/bin

tar -xvf "apache-maven/target/apache-maven-${PKG_VERSION}-bin.tar.gz" -C $target --strip-components=1

cd $PREFIX/bin
ln -s ../opt/maven/bin/* .

rm -fr $target/lib/ext/
