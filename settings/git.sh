#!/usr/bin/env bash

#
# Make sure to enter your Git settings
#

if [ ! -f ~/.ssh/id_rsa ]; then
    echo "Creating SSH key ..."
    # Copy this ssh key to github.com!
    ssh-keygen -t rsa -C "kpapst@gmx.net"
fi

echo "Setting Git configs ..."

# Set git config values
git config --global user.name "Kevin Papst"
git config --global user.email "kpapst@gmx.net"
git config --global github.user kevinpapst
git config --global github.token your_token_here
git config --global color.ui true

