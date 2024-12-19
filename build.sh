#!/bin/bash
set -e
cd "$(dirname "$0")"
git clone --depth=1 https://github.com/ec-/Quake3e.git
cd Quake3e
git apply ../duplicate-guid-fix.patch
make
cp build/release-darwin-aarch64/libSDL2-2.0.0.dylib ..
cp build/release-darwin-aarch64/*.aarch64 ..
