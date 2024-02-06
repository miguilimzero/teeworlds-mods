#!/bin/bash

# Clone Repository
git clone https://github.com/teemods/zombpanic --recurse-submodules
cd zombpanic

# Compile Mod
mkdir build && cd build
cmake -DCLIENT=OFF -DMYSQL=ON ..
make -j$(nproc)

# Move Binary & Delete Repository
mv DDNet-Server ../../ZombPanic-Server
cd ../..
rm -rf zombpanic