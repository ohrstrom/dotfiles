#!/bin/bash

brew update && brew upgrade

brew install \
  wget \
  direnv \
  htop \
  iftop \
  ncdu \
  gh \
  glab \
  reattach-to-user-namespace

brew cleanup
