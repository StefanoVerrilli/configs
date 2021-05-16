setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

#set autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

fpath=(~/.config/prompt $fpath)

autoload -Uz Ps1; Ps1
bindkey -v
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
export KEYTIMEOUT=1

source ~/.config/aliases/aliases
source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export Docker_CONFIG=$HOME/.config/.docker
