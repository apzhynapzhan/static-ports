#!/usr/bin/env bash
set -euo pipefail

TARGET="x86_64-unknown-linux-musl"

rustup target add "$TARGET" >/dev/null 2>&1 || true

if command -v apt >/dev/null 2>&1; then
    sudo apt update -y
    sudo apt install -y musl-tools pkg-config libssl-dev
elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -Sy --noconfirm musl pkgconf openssl
elif command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y musl-gcc pkg-config openssl-devel
fi

export OPENSSL_STATIC=1

[ -d hermes ] || git clone https://codeberg.org/StaticLinux/hermes.git

cd hermes

cargo build --release --locked --target "$TARGET"