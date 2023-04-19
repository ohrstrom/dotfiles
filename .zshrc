#######################################################################
# Shell / Prompt / zsh
#######################################################################

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
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# poetry
# https://python-poetry.org/docs/#installation
export PATH="/Users/ohrstrom/.local/bin:$PATH"
# export PATH=$HOME/.local/bin:$PATH


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
# test -r /Users/ohrstrom/.opam/opam-init/init.zsh && . /Users/ohrstrom/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval $(opam env --switch=default)


#######################################################################
# SDKs & Tools
#######################################################################

# autocompletion
source <(kubectl completion zsh)

if [ -f '/Users/ohrstrom/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ohrstrom/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/ohrstrom/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ohrstrom/google-cloud-sdk/completion.zsh.inc'; fi




export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"






# M1 c - https://apple.stackexchange.com/questions/414622/installing-a-c-c-library-with-homebrew-on-m1-macs
export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/ohrstrom/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/ohrstrom/miniforge3/etc/profile.d/conda.sh" ]; then
#        . "/Users/ohrstrom/miniforge3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/ohrstrom/miniforge3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/Users/ohrstrom'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET


# BEGIN_KITTY_SHELL_INTEGRATION
if test -e "/Applications/kitty.app/Contents/Resources/kitty/shell-integration/kitty.zsh"; then source "/Applications/kitty.app/Contents/Resources/kitty/shell-integration/kitty.zsh"; fi
# END_KITTY_SHELL_INTEGRATION

# Fiberplane CLI (fp)
export PATH="/Users/ohrstrom/.fiberplane:$PATH"
source /Users/ohrstrom/.fiberplane/zsh_completions
