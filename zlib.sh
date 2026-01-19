#!/bin/bash
set -e

PREFIXDIR=$HOME/llvm-mingw-install/arm64ec-w64-mingw32

wget https://zlib.net/fossils/zlib-1.3.1.tar.gz
tar xvf zlib-1.3.1.tar.gz
cd zlib-1.3.1
make -f win32/Makefile.gcc BINARY_PATH=$PREFIXDIR/bin INCLUDE_PATH=$PREFIXDIR/include LIBRARY_PATH=$PREFIXDIR/lib SHARED_MODE=1 PREFIX=arm64ec-w64-mingw32-
make -f win32/Makefile.gcc BINARY_PATH=$PREFIXDIR/bin INCLUDE_PATH=$PREFIXDIR/include LIBRARY_PATH=$PREFIXDIR/lib SHARED_MODE=1 PREFIX=arm64ec-w64-mingw32- install
cd ..
rm -rf zlib-1.3.1
rm zlib-1.3.1.tar.gz