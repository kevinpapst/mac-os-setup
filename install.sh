#!/usr/bin/env bash

#
# Inspirations from all over the place:
# https://github.com/kaicataldo/dotfiles/blob/master/bootstrap.sh
#

# Ask the user a Yes/No question
function ask_question() {
    read -p "${1} (y/N) " choice
    case "$choice" in
        Y | y | Yes | YES | yes ) return 0; exit;;
        N | n | No | NO | no ) return 1; exit;;
        * ) return 2;;
    esac
}

# Create directory if it doesn't exist
function create_dir() {
    if [[ ! -e $1 ]]; then
        mkdir $1
        echo "${1} directory created"
    elif [[ ! -d $1 ]]; then
        echo "${1} already exists but is not a directory"
    fi
}

# Create a symlink
function create_symlink() {
    ln -sfn $1 $2
    echo "Symlinked ${1} -> ${2}"
}


# -------------------------------------------------------------------------------------------

# Get the dotfiles directory's absolute path
DOTFILES_DIR="$(cd "$(dirname "$0")"; pwd -P)"

# Pull latest files from GitHub
echo "Fetching latest version from GitHub"

cd $DOTFILES_DIR
git pull origin master
git submodule update --init --recursive
git submodule foreach git pull origin master

# -------------------------------------------------------------------------------------------

# activate dotfiles from repo
if ask_question 'Do you want to install new .dotfiles?'; then
    echo "Installing new .dotfiles ..."
    rsync -av --no-perms --exclude="README.md" ./dotfiles/ ~
    source ~/.bash_profile
fi

# -------------------------------------------------------------------------------------------

# Install all software not bundled in Homebrew
if ask_question 'Do you want to install un-brewed software?'; then
    echo "Installing un-brewed software ..."
    for i in ./installer/*; do
        echo "Executing $i ..."
        sh $i
    done
fi

# -------------------------------------------------------------------------------------------

# Install all homebrew supported software
if ask_question 'Do you want to install homebrew software?'; then
    echo "Installing homebrew software ..."
    brew bundle
fi

# -------------------------------------------------------------------------------------------

# Install application settings
if ask_question 'Do you want to install application and MacOS settings?'; then
    echo "Installing application settings ..."
    for s in ./settings/*; do
        echo "Apply settings from $s ..."
        sh $s
    done
fi

# -------------------------------------------------------------------------------------------

# Now ask for a reboot, which is highly recommended after installing and configuring everything
if ask_question 'Do you want to reboot your computer now?'; then
    echo "Rebooting ..."
    sudo reboot
    exit 0
fi

unset create_dir
unset create_symlink
unset ask_question
exit 1
