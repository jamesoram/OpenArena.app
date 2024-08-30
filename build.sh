#!/bin/bash
set -e
cd "$(dirname "$0")"
git clone https://github.com/ec-/Quake3e.git
cd Quake3e
make
cp build/release-darwin-aarch64/libSDL2-2.0.0.dylib ..
cp build/release-darwin-aarch64/*.aarch64 ..