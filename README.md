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

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Sync VAULT data

    hdiutil mount ~/Drive/My\ Drive/Jonas/access/VAULT.dmg
    rsync -av /Volumes/VAULT/ohrstrom/.ssh/ ~/.ssh/



## Dotfiles

    git clone git@github.com:ohrstrom/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles

    # Bootstrap configuration
    ./osx.sh
    

