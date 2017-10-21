#!/usr/bin/env bash

#
# XCode Command Line Tools
#

if xcode-select --print-path &> /dev/null; then
    echo "XCode Command Line Tools already installed!"
    exit -1
fi

# Prompt user to install the XCode Command Line Tools
xcode-select --install &> /dev/null

# Wait until the XCode Command Line Tools are installed
until xcode-select --print-path &> /dev/null; do
sleep 5
done

print_result $? 'Install XCode Command Line Tools'

# Point the `xcode-select` developer directory to the appropriate directory from within `Xcode.app`
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
print_result $? 'Make "xcode-select" developer directory point to Xcode'

sudo xcodebuild -license accept
