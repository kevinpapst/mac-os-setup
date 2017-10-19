#!/usr/bin/env bash

#
#  My sources for OSX settings:
#
#  https://github.com/skwp/dotfiles/blob/master/bin/osx
#  https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#  https://github.com/hjuutilainen/dotfiles/tree/master/bin
#  http://mths.be/osx
#

echo "Applying MacOS seetings, sudo required ..."

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until everything is applied
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Set computer name
#COMPUTERNAME="Kevins MBP"
#HOSTNAME='mbp'
#LOCALHOSTNAME='mbp'

# Set computer name (as done via System Preferences → Sharing)
#sudo scutil --set ComputerName $COMPUTERNAME
#sudo scutil --set HostName $HOSTNAME
#sudo scutil --set LocalHostName $LOCALHOSTNAME
#sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $LOCALHOSTNAME

# Show the ~/Library folder
chflags nohidden ~/Library

# Store screenshots in subfolder on desktop
mkdir ~/Desktop
defaults write com.apple.screencapture location ~/Desktop
# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Get rid of the unused dashboard
defaults write com.apple.dashboard mcx-disabled -bool true
defaults write com.apple.dock dashboard-in-overlay -bool true

# Display all files in Finder
defaults write com.apple.finder AppleShowAllFiles TRUE
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

######################################################################
# TODO Make sure the applications fetch their new settings           #
######################################################################

# killall Finder
# killall SystemUIServer