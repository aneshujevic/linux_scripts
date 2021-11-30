#!/bin/bash

if [ $# -ne 1 ]; then
    echo '[*] AUR package install script'
    echo '[*] Usage: $0 <git clone url>'
    exit -1
fi

DIR_NAME_AUR=$(echo $1 | grep -o -P '(?<=org\/).+(?=\.git)')

git clone $1 && cd $DIR_NAME_AUR && makepkg -si && cd - && (yes | rm -r $DIR_NAME_AUR)
