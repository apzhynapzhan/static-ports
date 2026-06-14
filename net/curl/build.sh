cd curl-8.7.1
./configure \
    --host=x86_64-linux-musl \
    --with-openssl \
    --with-zlib \
    --disable-shared \
    --enable-static \
    CFLAGS="-static" \
    LDFLAGS="-static"
make -j$(nproc)