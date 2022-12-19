# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Plugin settings
export NVM_LAZY_LOAD=true

# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump zsh-nvm)

source $ZSH/oh-my-zsh.sh

# For a full list of active aliases, run `alias`.
alias soz="source ~/.zshrc"
unalias gl # was "git pull"
alias gll="git pull"
alias glo="git lg"
alias gss="git st"
alias gac="git ac"
alias gw="git worktree"

eval "$(starship init zsh)"
