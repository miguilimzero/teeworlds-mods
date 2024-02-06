#!/bin/bash

# Clone Repository
git clone https://github.com/kurosio/Teeworlds-MRPG-0.6 --recurse-submodules
cd Teeworlds-MRPG-0.6

# Compile Mod
mkdir build && cd build
cmake -DCLIENT=OFF ..
make -j$(nproc)

# Move Binary & Delete Repository
mv Mmotee-Server ../../MMOTee-Server
cd ../..
rm -rf Teeworlds-MRPG-0.6