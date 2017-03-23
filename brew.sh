#!/bin/bash

# Install command-line tools using Homebrew

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# Install other useful binaries
#brew install nodejs
brew install tree
brew install bash-completion
brew install ssh-copy-id
brew install wget
brew install tmux
brew install mysql
brew install htop-osx
#brew install ffmpeg --with-libvpx
brew install dark-mode
brew install watch
brew install unrar
brew install iftop
#brew install python

# other tools & libs & utils..
brew install ffmpeg
brew install imagemagick
brew install heroku


# Dependencies
brew install libxml2
brew install libxslt

# tmux
brew install reattach-to-user-namespace --wrap-pbcopy-pbpaste && brew link reattach-to-user-namespace

# docker
brew install docker
brew install docker-machine
brew install docker-compose


# Remove outdated versions from the cellar
brew cleanup
