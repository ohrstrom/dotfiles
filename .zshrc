#######################################################################
# Shell / Prompt / zsh
#######################################################################

# Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


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
# https://gist.github.com/josemarimanio/9e0c177c90dee97808bad163587e80f8
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# export PATH="$PYENV_ROOT/shims:$PATH"
# export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

eval "$(pyenv init -)"
eval "$(pyenv init --path)"

#plugin=(
#  pyenv
#)

# poetry
export PATH=$HOME/.poetry/bin:$PATH


#######################################################################
# Node.js
#######################################################################

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


#######################################################################
# Golang
#######################################################################

# gvm
# [[ -s"$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=${PATH}:$GOBIN


#######################################################################
# OCaml
#######################################################################

# opam
test -r /Users/ohrstrom/.opam/opam-init/init.zsh && . /Users/ohrstrom/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true


#######################################################################
# SDKs & Tools
#######################################################################

# autocompletion
source <(kubectl completion zsh)

if [ -f '/Users/ohrstrom/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ohrstrom/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/ohrstrom/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ohrstrom/google-cloud-sdk/completion.zsh.inc'; fi


# BEGIN_KITTY_SHELL_INTEGRATION
if test -e "/Applications/kitty.app/Contents/Resources/kitty/shell-integration/kitty.zsh"; then source "/Applications/kitty.app/Contents/Resources/kitty/shell-integration/kitty.zsh"; fi
# END_KITTY_SHELL_INTEGRATION
