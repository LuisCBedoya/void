# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

bind '"\ek": history-search-backward'
bind '"\ej": history-search-forward'
bind '"\eh": beginning-of-line'
bind '"\el": end-of-line'

#alias ls='lsd --group-dirs first'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias fre='sudo fc-cache -f -v && fc-cache -f -v'

shopt -s nocaseglob
bind 'set completion-ignore-case on'
