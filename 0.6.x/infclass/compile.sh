#!/bin/bash

# Clone Repository
git clone https://github.com/infclass/teeworlds-infclassr
cd teeworlds-infclassr

# Compile Mod
mkdir build && cd build
cmake ..
make -j$(nproc)

# Move Binary & Delete Repository
mv Infclass-Server ../../InfClass-Server
cd ../..
rm -rf teeworlds-infclassr