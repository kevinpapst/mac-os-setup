#!/usr/bin/env bash

#
# Atom editor - copy settings
#
# I am not going to link this directory, because Atom installs plugins and a lot of other stuff in this folder
#

if [ ! -d ~/.atom/ ]; then
    echo "Creating atom directory at ~/.atom"
    mkdir ~/.atom
fi

echo "Copying atom settings ..."
cp -r ~/dotfiles/atom/ ~/.atom/

echo "Install atom plugins ..."
apm install --packages-file ~/.atom/packages.list
