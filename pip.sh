#!/bin/bash

# Install global pip packages

sudo easy_install pip

sudo pip install virtualenv
sudo pip install ansible
sudo pip install tmuxp
sudo pip install -I -e "git+https://github.com/palmbeach-interactive/pbi-client.git#egg=pbi-client"
