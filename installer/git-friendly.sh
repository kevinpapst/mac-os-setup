#!/usr/bin/env bash

#
# Gives you some enhanced git commands:
# - branch
# - pull
# - commit
# - push
#
# See github.com/jamiew/git-friendly for more information
#

if [ $(which pull) ]; then
    echo "git-friendly already installed!"
    exit -1
fi

echo "Install git-friendly ..."

sh -c "$(curl https://raw.githubusercontent.com/jamiew/git-friendly/master/install.sh)"
