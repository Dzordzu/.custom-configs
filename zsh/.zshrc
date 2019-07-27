# Use vim bindings
bindkey -v

## ESC + v as vim edit
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Constants
EDITOR=vim
ZSH_THEME="cobalt2"
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=2500

# Plugins
plugins=(
   git
)

zstyle :compinstall filename '/home/dzordzu/.zshrc'
autoload -Uz compinit
compinit

# Auto cd
setopt autocd

# Set prompt
autoload -Uz promptinit
promptinit

# Reversed history search
bindkey '^R' history-incremental-search-backward

# Antibody
source <(antibody init)
antibody bundle < ~/.zsh_plugins
