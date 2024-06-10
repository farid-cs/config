HISTFILE=~/.cache/histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -M vicmd 'k' history-search-backward
bindkey -M vicmd 'j' history-search-forward

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

alias grep='grep --color'
alias ls='ls --color --group-directories-first'
alias t='sudo tlp start'
alias s='sensors'
alias a='acpi'
alias mr='make run'
alias mc='make clean'
alias c='clear'
alias fzf='fzf --layout=reverse'

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey '^[[Z' reverse-menu-complete

eval "$(starship init zsh)"
setopt autocd
