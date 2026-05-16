#!/bin/sh
set -e
export PATH="$HOME/staticlinux/toolchain/bin:$PATH"
VERSION="1.3.2"
wget https://zlib.net/zlib-$VERSION.tar.gz
tar xf zlib-$VERSION.tar.gz
cd zlib-$VERSION
CC=x86_64-linux-musl-gcc ./configure --static --prefix=/usr
make -j$(nproc)
