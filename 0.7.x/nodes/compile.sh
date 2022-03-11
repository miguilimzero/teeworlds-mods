#!/bin/bash

# Clone Repository
git clone https://github.com/teeworldsnetwork/nodes
cd nodes

# Compile Mod
mkdir build && cd build
cmake -DCLIENT=OFF ..
make -j$(nproc)

# Move Binary & Delete Repository
mv twnodes_srv ../../Nodes-Server
cd ../..
rm -rf nodes