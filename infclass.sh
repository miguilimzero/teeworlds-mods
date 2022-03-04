#!/bin/bash

# Install Dependencies
wget https://raw.githubusercontent.com/teeframe/mods-compiler/main/default-dependencies.sh  -O - | sh
sudo apt-get install -y libicu-dev libmaxminddb-dev

# Clone Repository
git clone https://github.com/InfectionDust/teeworlds-infclassr -b staging
cd teeworlds-infclassr

# Download Bam Binary
wget https://raw.githubusercontent.com/teeframe/mods-compiler/main/bam
chmod 764 bam

# Compile mod
./bam server_debug