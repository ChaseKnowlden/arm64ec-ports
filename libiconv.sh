#!/bin/bash
set -e

wget https://ftpmirror.gnu.org/libiconv/libiconv-1.18.tar.gz
tar xvf libiconv-1.18.tar.gz
cd libiconv-1.18
./configure --prefix=$HOME/llvm-mingw-install/arm64ec-w64-mingw32 --enable-static --enable-shared --build=x86_64-pc-linux-gnu --host=arm64ec-w64-mingw32
make -j4
make -j4 install
cd ..
rm -rf libiconv-1.18
rm libiconv-1.18.tar.gz