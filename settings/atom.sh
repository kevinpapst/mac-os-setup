#!/usr/bin/env bash

#
# Atom editor - copy settings
#

if [ ! -d ~/.atom/ ]; then
    echo "Creating atom directory at ~/.atom"
     mkdir ~/.atom
fi

echo "Copying atom settings ..."
cp -r ~/dotfiles/atom/ ~/.atom/

echo "Install atom plugins ..."
apm install --packages-file ~/dotfiles/atom/packages.list
