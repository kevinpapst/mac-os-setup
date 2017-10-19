#!/usr/bin/env bash

#
# Some re-usable scripts and/or binaries
#

if [ ! -d ~/bin/ ]; then
    echo "Creating bin directory at ~/bin"
     mkdir ~/bin/
fi

echo "Copying bin/ ..."
cp -r ~/dotfiles/bin/ ~/bin/
