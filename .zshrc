#######################################################################
# Shell / Prompt / zsh
#######################################################################

#zmodload zsh/zprof

# Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


export LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8


#######################################################################
# Aliases
#######################################################################
alias pw="env LC_CTYPE=C LC_ALL=C tr -dc \"A-Z\" < /dev/urandom | head -c 24; echo"


#######################################################################
# Homebrew
#######################################################################
eval "$(/opt/homebrew/bin/brew shellenv)"


#######################################################################
# iTerm Integration
#######################################################################
source '/Users/ohrstrom/.iterm2/shell.zsh'


#######################################################################
# Generic Tools
#######################################################################

# direnv https://direnv.net/docs/
eval "$(direnv hook zsh)"


#######################################################################
# Python
#######################################################################

# pyenv
# https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# poetry
# https://python-poetry.org/docs/#installation
export PATH="/Users/ohrstrom/.local/bin:$PATH"
# export PATH=$HOME/.local/bin:$PATH


#######################################################################
# Node.js
#######################################################################

# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export NVM_LAZY_LOAD=true
source "/Users/ohrstrom/.zsh-nvm.plugin.zsh"


#######################################################################
# bun
# https://bun.sh/
#######################################################################
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

[ -s "/Users/ohrstrom/.bun/_bun" ] && source "/Users/ohrstrom/.bun/_bun"


#######################################################################
# cargo
#######################################################################
source "$HOME/.cargo/env"


#######################################################################
# Golang
#######################################################################

# gvm
# [[ -s"$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=${PATH}:$GOBIN


#######################################################################
# asdf
# https://asdf-vm.com/
#######################################################################
. "$HOME/.asdf/asdf.sh"

fpath=(${ASDF_DIR}/completions $fpath)
# autoload -Uz compinit && compinit


#######################################################################
# OCaml
#######################################################################

# opam
export OPAMSWITCH=default
eval "$(opam env)"
#eval "$(opam env --switch=default)"


#######################################################################
# SDKs & Tools
#######################################################################

# autocompletion
# source <(kubectl completion zsh)

if [ -f '/Users/ohrstrom/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ohrstrom/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/ohrstrom/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ohrstrom/google-cloud-sdk/completion.zsh.inc'; fi


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# arm / M1/2 - https://apple.stackexchange.com/questions/414622/installing-a-c-c-library-with-homebrew-on-m1-macs
export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib


# if [[ -n $KITTY_INSTALLATION_DIR ]]; then
#   export KITTY_SHELL_INTEGRATION="enabled"
#   autoload -Uz -- "$KITTY_INSTALLATION_DIR"/shell-integration/zsh/kitty-integration
#   kitty-integration
#   unfunction kitty-integration
#   #
#   alias ssh="kitty +kitten ssh"
# fi

# uv / uvx
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

# starship prompt
# eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/ohrstrom/.docker/completions $fpath)
# autoload -Uz compinit
# compinit
# End of Docker CLI completions


# global compinit
autoload -Uz compinit
compinit -C

#zprof

