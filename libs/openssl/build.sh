#!/bin/sh
set -e

VERSION="4.0.0"

wget https://github.com/openssl/openssl/releases/download/openssl-$VERSION/openssl-$VERSION.tar.gz
tar xf openssl-$VERSION.tar.gz
cd openssl-$VERSION
./Configure linux-x86_64 \
    --cross-compile-prefix=x86_64-linux-musl- \
    no-shared \
    no-tests \
    --prefix=/usr \
    --openssldir=/etc/ssl
make -j$(nproc)
