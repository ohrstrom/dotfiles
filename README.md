# Dotfiles

## Shell

```
chsh -s /bin/zsh
# zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

## Homebrew

    xcode-select --install
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Sync VAULT data

    hdiutil mount ~/Drive/My\ Drive/Jonas/access/VAULT.dmg
    rsync -av /Volumes/VAULT/ohrstrom/.ssh/ ~/.ssh/

## Dotfiles

    git clone git@github.com:ohrstrom/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles

    # link config files
    
    ln -s ~/.dotfiles/.iterm2 ~/.iterm2
    ln -s ~/.dotfiles/.spacemacs ~/.spacemacs
    rm ~/.zshrc
    ln -s ~/.dotfiles/.zshrc ~/.zshrc


    # Bootstrap configuration
    ./osx.sh
    
## Code Workspace

    mkdir ~/Documents/Code
    ln -s ~/Documents/Code ~/code
    
## Python Tools

    curl -L dephell.org/install | python3

    curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
    poetry completions bash > $(brew --prefix)/etc/bash_completion.d/poetry.bash-completion

    brew install pyenv
    pyenv install 3.8.3
    pyenv global 3.8.3
    
    pip install --upgrade pip
    # pip install pipenv
    
    
## Node Tools

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
    nvm install v12.18.1
    npm install -g yarn
    rvm use ruby-3.0.0 --default
    
    
## Ruby Tools

    curl -sSL https://get.rvm.io | bash -s stable
    rvm install ruby@latest
    

## Cloud Tools

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