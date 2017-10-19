# MacOS developer setup (including for MacOS)

This is a not only a simple .dotfiles repo from a PHP developer
but also a bunch of scripts to create a full featured working environment for myself. 

I had the idea to combine my [dotfiles repo](https://github.com/kevinpapst/dotfiles) with the installer functionality after writing my guide [Developer setup for Mac OS X 10.11 El Capitan](https://gist.github.com/kevinpapst/24e251a5bf3a01174a231e8eeb13d6cd)

Be careful: it was never meant to run with any other OS, so don't try it!

## What is included?

Its a backup and "out-of-the-box setup" for my complete Mac working environment ... well not everything, but everything that is possible to be setup in an automated way ;-)

Main files and folder:

- `bin/` - helper scripts and binaries  
- `dotfiles/` - every file in here will be copied to your HOME (~) directory  
- `installer/` - each file is a simple software installer, checking upfront if the installation is neccessary
- `settings/` - installer scripts for settings
- `Brewfile` - all the brew repos that will be watched and the software to be installed  

## Adjust to your needs

Make sure that you checked the following points before you run the installer:

- Remove any file from `installer/` that you don't need
- Carefully read and adjust `Brewfile` before executing the installer   
- Make sure that the `.macos` settings are customized to your requirements    
- Set your name and email in `settings/git.sh` 
- The MacOS settings in `settings/macos.sh` should be thoroughly reviewed 

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


## Thanks ...

* [Ingo Walz](https://github.com/iwalz/) for the idea to read more about public dotfiles
* [http://dotfiles.github.io/](Dotfiles) for the great collection
* [Kevin Elliott](https://github.com/kevinelliott/.dotfiles) for his repo
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for his repo
* [tutsplus](http://net.tutsplus.com/tutorials/tools-and-tips/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles/)
* Read through the source files, there are more mentions included ...