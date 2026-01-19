#!/bin/bash
wget https://github.com/ChaseKnowlden/libunistring-arm64ec/archive/refs/heads/main.zip
unzip main.zip
cd libunistring-arm64ec-main
./configure --prefix=$HOME/llvm-mingw-install/arm64ec-w64-mingw32 --disable-static --build=x86_64-pc-linux-gnu --host=arm64ec-w64-mingw32
make -j1
make install
cd ..
rm -rf libunistring-arm64ec-main
rm main.zip