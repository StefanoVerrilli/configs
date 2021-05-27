setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

#set autocomplete
autoload -U compinit
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

prompt_git_branch() {
     autoload -Uz vcs_info 
     precmd_vcs_info() { vcs_info }
     precmd_functions+=( precmd_vcs_info )
     setopt prompt_subst
     zstyle ':vcs_info:git:*' formats '%b'
 }
 
prompt_git_info() {
     echo "$ZSH_THEME_GIT_PROMPT_PREFIX$vcs_info_msg_0_$ZSH_THEME_GIT_PROMPT_SUFFIX"
 }
 
 prompt_purity_precmd() {
 }
 
 prompt_purification_setup() {
     # Display git branch
     prompt_git_branch
     RPROMPT='$(prompt_git_info)'
     PROMPT=$'[%F{2}%~%f%F{255}]$ '
 }
 
prompt_purification_setup


