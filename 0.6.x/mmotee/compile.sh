#!/bin/bash

# Clone Repository
git clone https://github.com/kurosio/Teeworlds-Mmotee-Old --recurse-submodules
cd Teeworlds-Mmotee-Old

# Compile Mod
mkdir build && cd build
cmake -DCLIENT=OFF ..
make -j$(nproc)

# Move Binary & Delete Repository
mv Mmotee-Server ../../MMOTee-Server
cd ../..
rm -rf Teeworlds-Mmotee-Old