#!/bin/bash

# Clone Repository
git clone https://github.com/InfectionDust/teeworlds-infclassr -b staging
cd teeworlds-infclassr

# Compile Mod
mkdir build && cd build
cmake ..
make -j$(nproc)

# Move Binary & Delete Repository
mv Infclass-Server ../../Infclass-Server
cd ../..
rm -rf teeworlds-infclassr