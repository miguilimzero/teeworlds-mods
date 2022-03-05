#!/bin/bash

# Clone Repository
git clone https://github.com/ddnet/ddnet --recurse-submodules
cd ddnet

# Compile Mod
mkdir build && cd build
cmake -DCLIENT=OFF -DMYSQL=ON ..
make -j$(nproc)

# Move Binary & Delete Repository
mv DDNet-Server ../../DDNet-Server
cd ../..
rm -rf ddnet