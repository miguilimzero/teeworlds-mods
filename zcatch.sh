#!/bin/bash

# Install Dependencies
wget https://raw.githubusercontent.com/teeframe/mods-compiler/main/resources/default-dependencies.sh  -O - | sh

# Clone Repository
git clone https://github.com/ddnet/zcatch
cd zcatch

# Download Bam Binary
wget https://raw.githubusercontent.com/teeframe/mods-compiler/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release