#!/bin/bash

# Clone Repository
git clone https://github.com/srdante/zomb-panic --recurse-submodules
cd zomb-panic

# Compile Mod
mkdir build && cd build
cmake -DCLIENT=OFF -DMYSQL=ON ..
make -j$(nproc)

# Move Binary & Delete Repository
mv DDNet-Server ../../ZombPanic-Server
cd ../..
rm -rf ddnet