# Dotfiles

## Shell

    chsh -s /bin/zsh
    # zprezto
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

## Homebrew

    xcode-select --install
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Sync VAULT data

    hdiutil mount ~/Drive/My\ Drive/Jonas/access/VAULT.dmg
    rsync -av /Volumes/VAULT/ohrstrom/.ssh/ ~/.ssh/

## Dotfiles

    git clone git@github.com:ohrstrom/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles

    # Bootstrap configuration
    ./osx.sh
    
## Code Workspace

    mkdir ~/Documents/Code
    ln -s ~/Documents/Code ~/code
    
## Python Tools

    brew install pyenv
    pyenv install 3.7.5
    pyenv global 3.7.5
    
    pip install --upgrade pip
    pip install pipenv
    
    
## Node Tools

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
    nvm install v12.14.1
    npm install -g yarn