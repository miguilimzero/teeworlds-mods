#!/bin/bash

REPO_DIR=$PWD

list_versions() {
    echo "Available versions:"
    ls -d */ | grep -vE '0\.6\.x-bin|0\.7\.x-bin|resources'
}

list_mod_per_version() {
    version=$1
    echo "Mods available for $version:"
    ls -d "$REPO_DIR/$version"/*/
}

install_mod() {
    version=$1
    mod=$2
    mod_path="$REPO_DIR/$version/$mod"
    if [ -d "$mod_path" ]; then     
        cd "$REPO_DIR/$version/$mod"
        bash compile.sh
        echo "Success: $mod has been installed!"
        exit
    else
        echo "Error: Something went wrong."
    fi
}


echo "Welcome to the teeworlds-mods installer!"
list_versions

while true; do
    echo "Enter the mod version below (or say exit to quit):"
    read choose_version

    if [ "$choose_version" == "exit" ]; then
        echo "Leaving..."
        break
    fi

    if [ -d "$REPO_DIR/$choose_version" ]; then
        list_mod_per_version "$choose_version"
        
        echo "Enter the mod you want to install (or say 'leave' to choose another version):"
        read choose_mod

        if [ "$choose_mod" == "leave" ]; then
            continue
        fi

        if [ -d "$REPO_DIR/$choose_version/$choose_mod" ]; then
            install_mod "$choose_version" "$choose_mod"
        else
            echo "Mod not found. Try again."
        fi
    else
        echo "Version not found. Try again."
    fi
done
