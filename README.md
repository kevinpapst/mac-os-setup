# MacOS developer setup (including for MacOS)

This is a not only a simple .dotfiles repo from a PHP developer
but also a bunch of scripts to create a full featured working environment for myself. 

I had the idea to combine my [dotfiles repo](https://github.com/kevinpapst/dotfiles) with the installer functionality after writing my guide [Developer setup for Mac OS X 10.11 El Capitan](https://gist.github.com/kevinpapst/24e251a5bf3a01174a231e8eeb13d6cd)

Be careful: it was never meant to run with any other OS, so don't try it!

## What is included?

Its a backup and "out-of-the-box setup" for my complete Mac working environment ... well not everything, but everything that is possible to be setup in an automated way.

That repo was mainly written to support myself, but I hope that you can use it as an inspiration for own environment. 
You can not only improve your workflow, but it also allows you to move to a new Mac in a matter of minutes. 

Main files and folder:

- `bin/` - helper scripts and binaries  
- `dotfiles/` - every file in here will be copied to your HOME (~) directory  
- `installer/` - some basic software installer, that can't be fetched by Homebrew
- `settings/` - installer scripts for settings
- `Brewfile` - all the brew repos that will be watched and the software to be installed  

## Adjust to your needs

Make sure that you checked the following points before you run the installer:

- Remove any file from `installer/` that you don't need
- Carefully read and adjust `Brewfile` to only install the software you need   
- Make sure that the `.macos` settings are thoroughly reviewed    
- Set your name and email in `settings/git.sh` 

## Installation

You will be prompted during each installation step for your permission.
But a word of warning nevertheless: create a backup of your dotfiles and/or your environment first!

```bash
git clone https://github.com/kevinpapst/mac-os-setup.git ~/dotfiles
```

If you don't want to install to `~/dotfiles/` you MUST search for that string and replace it in some files!


Installation (as well as updating later on) is as simple as calling `install.sh`:

```bash
cd ~/dotfiles/
./install.sh
```


## Inspired by ...

* [Dotfiles](http://dotfiles.github.io/) the unofficial guide to dotfiles on GitHub
* [Kevin Elliott](https://github.com/kevinelliott/.dotfiles) for his dotfiles repo
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for all his scripts
* Read through the source files, there are more mentions included ...