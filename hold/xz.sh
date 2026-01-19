#!/bin/bash
set -e

wget https://github.com//tukaani-project/xz/releases/download/v5.8.2/xz-5.8.2.tar.xz
tar xvf xz-5.8.2.tar.xz
cd xz-5.8.2
./configure --prefix=$HOME/llvm-mingw-install/arm64ec-w64-mingw32 --disable-static --docdir=$HOME/llvm-mingw-install/arm64ec-w64-mingw32/share/doc/xz-5.8.2 --build=x86_64-pc-linux-gnu --host=arm64ec-w64-mingw32
make -j4
cd ..
rm -rf xz-5.8.2
rm xz-5.8.2.tar.xz