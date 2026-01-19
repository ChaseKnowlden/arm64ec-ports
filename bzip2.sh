#!/bin/bash
wget https://www.sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz
wget https://github.com/msys2/MINGW-packages/raw/refs/heads/master/mingw-w64-bzip2/bzip2-1.0.6-progress.all.patch
wget https://github.com/msys2/MINGW-packages/raw/refs/heads/master/mingw-w64-bzip2/bzip2-buildsystem.all.patch
wget https://github.com/msys2/MINGW-packages/raw/refs/heads/master/mingw-w64-bzip2/bzip2-cygming-1.0.6.src.all.patch
tar xvf bzip2-1.0.8.tar.gz
cd bzip2-1.0.8
patch -p1 -i ../bzip2-cygming-1.0.6.src.all.patch
patch -p1 -i ../bzip2-buildsystem.all.patch
patch -p1 -i ../bzip2-1.0.6-progress.all.patch
autoreconf -fi
./configure \
    --prefix=$HOME/llvm-mingw-install/arm64ec-w64-mingw32 \
    --build=x86_64-pc-linux-gnu \
    --host=arm64ec-w64-mingw32 \
    --target=arm64ec-w64-mingw32 \
    --enable-shared
make all-dll-shared
make install
cd ..
rm -rf bzip2-1.0.8
rm bzip2-1.0.8.tar.gz
rm bzip2-1.0.6-progress.all.patch
rm bzip2-buildsystem.all.patch
rm bzip2-cygming-1.0.6.src.all.patch