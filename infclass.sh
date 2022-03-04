#!/bin/bash

wget https://raw.githubusercontent.com/teeframe/mods-compiler/main/default-dependencies.sh  -O - | sh

sudo apt-get install -y libicu-dev libmaxminddb-dev

git clone https://github.com/InfectionDust/teeworlds-infclassr -b staging
cd teeworlds-infclassr

wget https://raw.githubusercontent.com/teeframe/mods-compiler/main/bam

./bam server_debug