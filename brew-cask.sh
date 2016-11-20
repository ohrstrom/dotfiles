#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# daily
#brew cask install spectacle
brew cask install java
#brew cask install rescuetime
brew cask install flux
brew cask install pycharm
brew cask install sourcetree
brew cask install sequel-pro
brew cask install google-drive
brew cask install dropbox
brew cask install viscosity
#brew cask install quicksilver
brew cask install macpass
brew cask install hipchat
brew cask install telegram-desktop
brew cask install fwbuilder
brew cask install alfred
#brew cask install cyberduck

# dev
brew cask install iterm2
brew cask install dash

# browsers
brew cask install google-chrome
brew cask install firefox
#brew cask install chromium
brew cask install vivaldi

# less often
#brew cask install disk-inventory-x
brew cask install vlc
brew cask install gpgtools
brew cask install utorrent
#brew cask install ukelele
