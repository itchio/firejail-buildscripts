#!/bin/sh -xe

export CI_OS="linux"

if [ "$CI_ARCH" = "amd64" ]; then
  export CFLAGS=-m64 CXXFLAGS=-m64 LDFLAGS=-m64
fi

gcc -v

git clone https://github.com/netblue30/firejail.git firejail-repo
(cd firejail-repo && git checkout $GITHUB_REF_NAME && ./configure && make -j3)
mv firejail-repo/src/firejail/firejail .

strip firejail
file firejail

mkdir -p binaries
mv firejail "binaries/firejail-${CI_OS}-${CI_ARCH}"
