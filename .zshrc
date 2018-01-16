#!/bin/zsh

# # # # # # # # # # # # #
#    General Config     #
# # # # # # # # # # # # #

# Support 256 colors
export TERM="xterm-256color"

# Add Paths
PATH="$HOME/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:$PATH"

# With this the username at the start of the line in the console is removed
DEFAULT_USER=bernd

# Set theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# Python Startup
export PYTHONSTARTUP=~/.pythonrc

# Export ZSH path
export ZSH="$HOME/.oh-my-zsh"

# Load all plugins before we load `oh my zsh` to ensure that everything works correctly
plugins=(git zsh-syntax-highlighting last-working-dir pip python sublime ssh-agent gpg-agent osx pyenv python rsync thefuck zsh_reload git-open)

# start "oh my zsh"
source "$ZSH/oh-my-zsh.sh"

# Load aliases (must be after "oh my zsh")
source "$HOME/.zsh/aliases"

# Load hooks
source "$HOME/.zsh/hooks"

# Load Server
source "$HOME/.zsh/servers"

# Set "oh my zsh" preferences
setopt BEEP
setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions
setopt PROMPT_SUBST
setopt COMPLETE_IN_WORD
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# Set history file and its options
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000
SAVEHIST=1000

# Information shown on the left and right side of the console input
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(pyenv dir dir_writable)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time)

# load all functions from the functions folder
export PATH="$HOME/.zsh/functions:$PATH"

# Initialise Rubyenv if available
if [ -d "$HOME/.rbenv/bin" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# OpenSSL Missing and libxml fix
export LDFLAGS="-L/usr/local/opt/openssl/lib -L/usr/local/opt/libxml2/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include -I/usr/local/opt/libxml2/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig /usr/local/opt/libxml2/lib/pkgconfig"
export PATH="/usr/local/opt/libxml2/bin:$PATH"

# Use vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Add etcher-cli if available
if [ -d "/opt/etcher-cli" ]; then
    export PATH="$PATH:/opt/etcher-cli"
fi

export LC_ALL=de_CH.utf-8
export LANG=de_CH.utf-8
export PATH="/usr/local/opt/gettext/bin:$PATH"

# Homebrew GIT Token
export HOMEBREW_GITHUB_API_TOKEN="c3932190c2f2963370ae6ce9bfc9163e0f2d3899"

# Disable tab key if there is no autocompletion available
zstyle ':completion:*' insert-tab false

# Fix LS colors
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1
