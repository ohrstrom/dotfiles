#!/bin/bash

brew update && brew upgrade

brew install \
  wget \
  tmux \
  iftop \
  reattach-to-user-namespace

brew cleanup
