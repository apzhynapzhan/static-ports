#!/bin/sh
set -e

cd hermes
cargo build --release --locked --target x86_64-unknown-linux-musl