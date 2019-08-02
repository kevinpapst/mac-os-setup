# see https://github.com/Homebrew/homebrew-bundle
cask_args appdir: "/Applications"

brew "mas"

######################################################################
# App-Store programs via "mas"                                       #
######################################################################

mas "feedly", id: 865500966
mas "Monosnap", id: 540348655
mas "Numbers", id: 409203825
mas "Pages", id: 409201541
mas "PDFify", id: 1435055351
mas "Receiver Radio", id: 1445434819
mas "Xcode", id: 497799835

######################################################################
# Office                                                             #
######################################################################

cask "libreoffice"
cask "receipts"

######################################################################
# The development, console and server stuff                          #
######################################################################

#brew "git"
#brew "git-extras"

#brew "git-flow"
#brew "curl"
#brew "tree"
#brew "openssl"
#brew "wget"
#brew "telnet"

# ==== Databases and tools ====
brew "mariadb", restart_service: true
cask "db-browser-for-sqlite"
cask "sequel-pro"
brew "sqlite-analyzer"
#brew "postgresql"

#cask "virtualbox"
#cask "vagrant"
#cask "transmit"
cask "postman"

# ==== Some version control tools you might like ====
# cask "github-desktop"
# cask "tower"
# cask "sourcetree"

# brew "docker"
# brew "docker-compose"
# brew "docker-machine"
# cask "dockertoolbox"

# ==== VPN Connections ====
# cask "tunnelbear"
# cask "tunnelblick"

# ==== CLEANUP NECESSARY ====
#brew "carthage"
#brew "gcc"
#brew "imagemagick"
#brew "md5sha1sum"
#brew "neofetch"
#brew "node@8"
#brew "nvm"
#brew "php"
#brew "ruby-build"
#brew "rbenv"
#brew "rbenv-bundle-exec"
#brew "rbenv-bundler"
#brew "rbenv-bundler-ruby-version"
#brew "swiftlint"
#brew "yarn"

######################################################################
# Everything PHP related                                             #
######################################################################

# Mojave comes with PHP 7.3 bundled, which is excellent - so I will stick with that one

brew "composer"
# brew "php-code-sniffer"
# brew "php-cs-fixer"

######################################################################
# Licensed software                                                  #
######################################################################

cask "phpstorm"
cask "hyperdock"
cask "moneymoney"

#cask "gemini"
#cask "cleanmymac"
#cask "powerphotos"

# no license for 6 yet:
# cask "istat-menus"
# so we install the latest v5:
# cask "https://raw.githubusercontent.com/caskroom/homebrew-cask/3a68e11fa578e36fe4745d761a6082b0b158391b/Casks/istat-menus.rb"

# cask "versions"               # subversion client

######################################################################
# Shell: iTerm2, zsh, oh-my-zsh plugins and themes                   #
######################################################################

cask "iterm2"
brew "zsh"
brew "zsh-autosuggestions"

tap "homebrew/cask-fonts"
cask "font-menlo-for-powerline"

######################################################################
# (Text-)Editors                                                     #
######################################################################

cask "atom"

#cask "sublime-text"            # license required

# textwrangler is no longer available and became part of bbedit
# cask "bbedit"

######################################################################
# Markdown editor                                                    #
######################################################################

# cask "gitbook"
# cask "poedit"
# cask "macdown"

######################################################################
# Everyday tools / Cloud / Communication                             #
######################################################################

# cask "commander-one"

# more spyware than iCloud needed?
# cask "dropbox"
# cask "google-backup-and-sync"

cask "skype"
cask "slack"
cask "vlc"

# cask "cheatsheet"

# cask "keepassx"               # I prefer MacPass due to its much nicer UI
cask "macpass"

# cask "google-hangouts"
# cask "grandperspective"
# cask "calibre"
# cask "handbrake"
# cask "steam"
# cask "flash"

# cask "spectacle"              # Spectacle is free and has window resizing and snapping features, but I use HyperDock

# cask "the-unarchiver"		    # don't know which one ...
# cask "keka"			        # ... is the better un-archiver, so try any of them

#cask "aerial"                   "# screensaver showing the AppleTV aerial videos

######################################################################
# Drivers                                                            #
######################################################################

tap "homebrew/cask-drivers"
cask "canon-pixma-scanner-driver-ica"     # for my Canon MG5350 printer

######################################################################
# Browser                                                            #
######################################################################

cask "firefox"
cask "google-chrome"

# cask "chromium"
# cask "firefoxnightly"
# cask "google-chrome-canary"
# cask "opera"

######################################################################
# Image editing and manipulation                                     #
######################################################################

# cask "macsvg"
# cask "gimp"                   # almost too much for the simple tasks
# cask "seashore"               # simple image editing for everyone
cask "imageoptim"             # shrinking all kinds of images
# cask "imagealpha"             # PNG optimizer
# cask "krita"
# cask "paintbrush"

######################################################################
# Quick Look Plugins                                                 #
######################################################################

# see https://github.com/sindresorhus/quick-look-plugins

#cask "qlcolorcode"
#cask "qlstephen"
#cask "qlmarkdown"
#cask "quicklook-json"
#cask "qlprettypatch"
#cask "quicklook-csv"
#cask "betterzipql"
#cask "qlimagesize"
#cask "webpquicklook"
#cask "suspicious-package"       # http://www.mothersruin.com/software/SuspiciousPackage/

######################################################################
# TESTING ...                                                        #
######################################################################

# cask "gmvault"                  # backup & restore gmail accounts

# brew "ffmpeg"
# brew "youtube-dl"

# Software I might use occasionally or did not test thoroughly enough to activate by default

# cask "elmedia-player"         # vlc alternative with airplay support
# cask "dash"                   # developer documentation offline
# cask "silverlight"            # microsoft libs that we hopefully don't need
# cask "quicksilver"            # productivity app (a better Spotlight)
# cask "glimmerblocker"         # proxy for ad-blocking
# cask "flux"                   # dim screen color at night
# cask "screenflow"             # screencast recorder
# cask "itunes-volume-control"  # control itunes volume with keyboard and apple remote
# cask "osxfuse"                # add fuse filesystems
# cask "gpgtools"
