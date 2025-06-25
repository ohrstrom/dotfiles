# Dotfiles?

Not purely a `.dotfiles` repo.  
I just try to keep here my notes & configs to setup / share things between machines...

## Code / Worksace

```shell
mkdir ~/code
ln -s ~/code ~/Documents/Code
```

## X-Code / Dev tools

```shell
xcode-select --install
```

## Access / Keys

```shell
SOURCE=mbp14.local
USER=ohrstrom
```

Copy `ssh` keys & config from a current system:

```shell
rsync -avz ${USER}@${SOURCE}:/Users/ohrstrom/.ssh/ ~/.ssh/
```

## Shell / zsh / Prezto

```shell
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh
```

## Browser & Editor

Chrome:  
https://www.google.com/chrome/

VSCode:  
https://code.visualstudio.com/

Other [Desktop Apps](install/desktop-apps.md)

## Dotfiles

this repository ;)

```shell
git clone git@github.com:ohrstrom/dotfiles.git ~/code/dotfiles
cd ~/code/dotfiles

# config files - zsh / prezto
rm ~/.zshrc
rm ~/.zpreztorc
ln -s ~/code/dotfiles/.zshrc ~/.zshrc`
ln -s ~/code/dotfiles/.zpreztorc ~/.zpreztorc

# etc
ln -s ~/code/dotfiles/.iterm2 ~/.iterm2`
ln -s ~/code/dotfiles/.spacemacs ~/.spacemacs
ln -s ~/code/dotfiles/.zsh-nvm.plugin.zsh ~/.zsh-nvm.plugin.zsh

touch ~/.hushlogin # do not show "last login..." 

# Apply macos system settings
./macos-settings.sh
```

## Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## Development Tooling
    
### Python

```shell
# pyenv
curl https://pyenv.run | bash
pyenv install 3.11.3
pyenv global 3.11.3

# poetry
curl -sSL https://install.python-poetry.org | python3 -

```

    
### Node

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

nvm install node  # latest version
npm install -g yarn
```


### Go

https://go.dev/dl/


### OCaml

```shell
bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"
exec -l $SHELL
opam init
```

## Cloud & Co

```shell
# gcp
curl https://sdk.cloud.google.com | bash
exec -l $SHELL

gcloud init


# aws
pip install --user awscli
pip install --user s3cmd

aws configure


# azure
brew install azure-cli

az login
```


## Various

### emacs / spacemacs


```shell
brew tap d12frosted/emacs-plus
# brew install emacs-plus
brew install emacs-plus@27 --HEAD --without-cocoa
brew link emacs-plus@27

# optional
brew services start d12frosted/emacs-plus/emacs-plus@27

```

```shell
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```