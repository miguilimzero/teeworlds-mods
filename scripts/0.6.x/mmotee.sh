#!/bin/bash

# Clone Repository
git clone https://github.com/MrCosmo666/Teeworlds-MRPG --recurse-submodules
cd Teeworlds-MRPG

# Compile Mod
mkdir build && cd build
cmake -DCLIENT=OFF ..
make -j$(nproc)

# Move Binary & Delete Repository
mv mmoteeworlds_srv ../../MMOTee-Server
cd ../..
rm -rf Teeworlds-MRPG