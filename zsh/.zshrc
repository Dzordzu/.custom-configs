export ZSH=/usr/share/oh-my-zsh

# Use vim bindings
bindkey -v

## ESC + v as vim edit
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Constants
EDITOR=vim
# ZSH_THEME="cobalt2"
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=2500

# Plugins
plugins=(
   git
   docker-compose
   copyfile
)

# Autocompletion
zstyle :compinstall filename '/home/dzordzu/.zshrc'
autoload -Uz compinit
compinit

setopt autocd
setopt COMPLETE_ALIASES

# Set prompt
autoload -Uz promptinit
promptinit

# Reversed history search
bindkey '^R' history-incremental-search-backward

# ZSH config
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# Antibody
source <(antibody init)
antibody bundle < ~/.zsh_plugins
