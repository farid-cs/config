HISTFILE=~/.cache/histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -M vicmd 'k' history-search-backward
bindkey -M vicmd 'j' history-search-forward

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zmodload zsh/complist

alias grep='grep --color=auto'
alias ls='ls --color=auto --group-directories-first'
alias t='sudo tlp start'
alias s='sensors'
alias a='acpi'
alias mc='make clean'
alias mt='make test'
alias c='clear'
alias fzf='fzf --layout=reverse'
alias sway='XKB_DEFAULT_OPTIONS=caps:escape sway'
lf() {
	TMP="$(mktemp)"
	/bin/lf -last-dir-path "$TMP" $@
	cd "$(cat $TMP)"
	rm "$TMP"
}

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect '^[[Z' reverse-menu-complete

setopt prompt_subst
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:git:*' formats '%b '
PROMPT='%B%~%b %B%F{magenta}${vcs_info_msg_0_}%f%b%(?.%F{green}❯%f.%F{red}❯%f) '

setopt autocd
