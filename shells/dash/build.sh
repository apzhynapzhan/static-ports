#!/bin/sh
set -e

export PATH="$HOME/staticlinux/toolchain/bin:$PATH"

VERSION="0.5.12"

wget http://gondor.apana.org.au/~herbert/dash/files/dash-$VERSION.tar.gz
tar xf dash-$VERSION.tar.gz
cd dash-$VERSION
CC=x86_64-linux-musl-gcc ./configure --host=x86_64-linux-musl --enable-static
make -j$(nproc)