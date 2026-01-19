#!/bin/bash
tar xvf libunistring-1.4.1.tar.xz
cd libunistring-1.4.1
patch -Np1 -i ../disable-gnulib-fetch.patch
patch -Np1 -i ../disable-subdirs.patch
./autogen.sh
./configure --prefix=$HOME/llvm-mingw-install/arm64ec-w64-mingw32 --disable-static --build=x86_64-pc-linux-gnu --host=arm64ec-w64-mingw32
make -j4
cd ..
rm -rf libunistring-1.4.1
rm libunistring-1.4.1.tar.xz