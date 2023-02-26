#
# vim: set syntax=bash:
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vi='nvim'
alias vim='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1="\[\e[35m\]>>>\[\e[0m\] "
PS2="\[\e[35m\]  >\[\e[0m\] "
PATH="$PATH:$HOME/.local/bin:$HOME/.ghcup/bin:$HOME/.cabal/bin"
GTK_THEME=Breeze-Dark
XCURSOR_THEME=Breeze_Snow
SWAY_LOG="$HOME/.sway_log"

export PS1 PS2 PATH GTK_THEME XCURSOR_THEME SWAY_LOG
