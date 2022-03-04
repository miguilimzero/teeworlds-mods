#!/bin/bash

# Install Dependencies
wget https://raw.githubusercontent.com/teeframe/mods-compiler/main/resources/default-dependencies.sh  -O - | sh
sudo apt-get install -y libicu-dev libmaxminddb-dev

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