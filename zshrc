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
export PATH=$HOME/bin:$PATH

# For redshift
export XDG_CONFIG_HOME=$HOME/.config

export EDITOR=vim

# aliases
source $HOME/.aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
