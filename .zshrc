#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
eval "$(pyenv init -)"
export PATH=/Users/ohrstrom/.local/bin:$PATH
export PATH=/usr/local/opt/gettext/bin:$PATH

# poetry
export PATH=$HOME/.poetry/bin:$PATH

# go / gvm
[[ -s"$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=${PATH}:$GOBIN


#
fpath+=~/.zfunc

# iterm2
source '/Users/ohrstrom/.iterm2/shell.zsh'

# autocompletion
source <(kubectl completion zsh)
source '/Users/ohrstrom/.local/bin/aws_zsh_completer.sh'

#
export PATH=~/.dotfiles/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# opam
test -r /Users/ohrstrom/.opam/opam-init/init.zsh && . /Users/ohrstrom/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true


if [ -f '/Users/ohrstrom/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ohrstrom/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/ohrstrom/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ohrstrom/google-cloud-sdk/completion.zsh.inc'; fi



export PATH="$HOME/.poetry/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
