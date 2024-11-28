# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export LIBVA_DRIVER_NAME=iHD
export PATH=$PATH:/usr/lib/jvm/jdk-17-oracle-x64/bin/
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

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
