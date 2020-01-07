#!/bin/bash

# Install command-line tools using Homebrew

# Ask for the administrator password upfront.
# sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install other useful binaries
brew install tree
brew install ssh-copy-id
brew install wget
brew install tmux
brew install htop-osx
brew install watch
brew install unrar
brew install iftop

# other tools & libs & utils..
brew install ffmpeg
brew install imagemagick
brew install heroku
brew install mas # https://github.com/mas-cli/mas

# Dependencies
brew install libxml2
brew install libxslt

# tmux
brew install reattach-to-user-namespace

# Remove outdated versions from the cellar
brew cleanup
