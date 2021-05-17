export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export EDITOR="subl -w"
export VISUAL="subl -w"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export CLICOLOR=1
export LSCOLORS=cxgxfxexbxegedabagacad
#export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
export VIMINIT="source ~/.config/vim/.vimrc"
PKG_CONFIG_PATH=/usr/opencv:/opt/homebrew/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/Lib
export PATH="/opt/homebrew/bin:$PATH"
