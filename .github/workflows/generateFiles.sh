#!/bin/bash

# Obtém o diretório do script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Volta duas pastas para chegar à raiz do repositório
REPO_DIR=$(dirname "$(dirname "$SCRIPT_DIR")")

cat <<EOF > build.yml
name: Compiling tests

on:
  push:
    branches:
      - main

jobs:
  install-dependencies:
    name: Install Dependencies
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v2

      - name: Set up Teeworlds dependencies
        run: |
          cd resources/
          bash default-dependencies.sh

EOF

# Arrays de versões
versions=("0.6.x" "0.7.x")

for version in "${versions[@]}"; do
    version_path="./$version"  # Caminho relativo ao diretório do repositório no GitHub Actions
    if [ -d "$REPO_DIR/$version" ]; then
        for mod in $(ls "$REPO_DIR/$version"); do
            cat <<EOF >> build.yml
  build-${version//./}_$mod:
    name: Build ${mod}
    needs: install-dependencies
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v2

      - name: Build ${mod}
        run: |
          cd "$version_path/$mod"
          bash compile.sh

EOF
        done
    fi
done
