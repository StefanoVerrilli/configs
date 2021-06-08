setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

#set autocomplete
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)


bindkey -v
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
export KEYTIMEOUT=1

export DOCKER_CONFIG=$HOME/.config/.docker

#Aliases that i use

alias ls='ls -Gh'
alias ll='ls -lah'
alias gcc='gcc-10'
alias v='vim'
alias proc="uname -p"
alias tmux="tmux -f ~/.config/tmux/.tmux.conf"
alias wget="wget --hsts-file ~/.config/wget"
alias shutdown="sudo shutdown now"
source $HOME/.config/scripts/scripts.zsh

PROMPT=$'[%F{2}%~%f%F{255}]$ '

test -e "${ZDOTDIR}/.iterm2_shell_integration.zsh" && source "${ZDOTDIR}/.iterm2_shell_integration.zsh"


