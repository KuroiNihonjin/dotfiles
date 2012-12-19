#!/usr/bin/env zsh
#
# Exports and oh-my-zsh configuration

# Export common variables
export PATH="$HOME/bin:$PATH"
export PATH="$DOTFILES/scripts:$PATH"

export BROWSER="firefox"
export EDITOR='vim'
export GIT_EDITOR='vim'

export MUNIN_LIBDIR='/usr/lib/munin'

# Java/SBT configuration
export SBT_OPTS="-Dfile.encoding=UTF8 -Xms256M -Xmx2048M -Xss4M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2048M"

# Ruby gems in the path
export PATH="$HOME/.gem/ruby/1.9.1/bin:$PATH"
# Ruby bundler, put gems in the user home
export GEM_HOME="$HOME/.gem/ruby/1.9.1"

# oh-my-zsh configuration
export DISABLE_AUTO_TITLE="true"

# Enable more syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# CDPATH tells the cd command to look in
# this colon-separated list of directories for your destination.
CDPATH=$HOME:..:/etc

# Load less keys
lesskey "$DOTFILES/lesskeys"

# Disable flow control in rxvt, frees ctrl-s & ctrl-q mappings
stty -ixon -ixoff

# Add dircolors
eval $(dircolors $DOTFILES/zsh/dircolors-solarized/dircolors.ansi-dark)
