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

user_name=`git config --global user.name`;
user_email=`git config --global user.email`;

if [[ "$user_name" != "" ]]; then
    echo "Username already set, aborting"
    exit 0
fi

if [[ "$user_email" != "" ]]; then
    echo "Email already set, aborting"
    exit 0
fi

unset user_name
unset user_email

# Set git config values
git config --global user.name "Kevin Papst"
git config --global user.email "kpapst@gmx.net"
git config --global github.user kevinpapst
git config --global github.token your_token_here
git config --global color.ui true
composer config -g github-oauth.github.com your_token_here
