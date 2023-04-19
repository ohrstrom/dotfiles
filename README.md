# Dotfiles

Not purely a `.dotfiles` repo.  
I just try to keep here my notes & comnfigs to setup / share state between machines...

## Shell


### Prezto

```shell script
chsh -s /bin/zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

```shell script
# symlinks created
~/.zlogin
~/.zlogout
~/.zpreztorc
~/.zprofile
~/.zshenv
~/.zshrc
```


## Homebrew

```shell script
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


## Sync VAULT data (optional)

```shell script
hdiutil mount ~/Drive/My\ Drive/Jonas/access/VAULT.dmg
rsync -av /Volumes/VAULT/ohrstrom/.ssh/ ~/.ssh/
```



## Dotfiles

```shell script
git clone git@github.com:ohrstrom/dotfiles.git ~/dotfiles
cd ~/dotfiles

# link config files
# zsh / prezto
rm ~/.zshrc
rm ~/.zpreztorc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zpreztorc ~/.zpreztorc

# tools etc
ln -s ~/dotfiles/.iterm2 ~/.iterm2
ln -s ~/dotfiles/.spacemacs ~/.spacemacs

# Apply macos system settings
./macos-settings.sh
```


## Code Workspace

```shell script
mkdir ~/Documents/Code
ln -s ~/Documents/Code ~/code
```

## Development Tooling
    
### Python

```shell script
# pyenv
brew install pyenv
pyenv install --list

pyenv install 3.9.7

# poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

```


    
    
### Node.js

```shell script
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

nvm install v12.18.1
npm install -g yarn
```


## Cloud & Co

```shell script
# gcp
curl https://sdk.cloud.google.com | bash
exec -l $SHELL

gcloud init

# heroku
brew tap heroku/brew
brew install heroku

heroku login

# aws
pip install --user awscli
pip install --user s3cmd

aws configure

# azure
brew install azure-cli

az login
```


## Apllications

```shell script
brew install wget
```

```shell script
wget https://dl.google.com/drive-file-stream/GoogleDriveFileStream.dmg
hdiutil mount GoogleDriveFileStream.dmg
sudo installer -pkg /Volumes/Install\ Google\ Drive\ File\ Stream/GoogleDriveFileStream.pkg -target "/Volumes/SSD"
hdiutil unmount /Volumes/Install\ Google\ Drive\ File\ Stream/
```

```shell script
brew install mplayershell
```

## Dev & co

```shell script
brew install redis
brew services start redis
```

## emacs / spacemacs


```shell script
brew tap d12frosted/emacs-plus
# brew install emacs-plus
brew install emacs-plus@27 --HEAD --without-cocoa
brew link emacs-plus@27

# optional
brew services start d12frosted/emacs-plus/emacs-plus@27

```

```shell script
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```