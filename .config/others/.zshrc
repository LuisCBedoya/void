export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="clean"
#bindkey '^a' backward-kill-word
#bindkey '^e' end-of-line
#bindkey '^w' up-line-or-search
#bindkey '^s' down-line-or-search
#bindkey '^p' up-line-or-history   

bindkey '^[h' backward-kill-word
bindkey '^d' forward-word
bindkey '^[k' up-line-or-search
bindkey '^[j' down-line-or-search
bindkey '^N' backward-delete-char


plugins=(git
	sudo)

source $ZSH/oh-my-zsh.sh


## Options section
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# Completion.
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '%U%F{cyan}%d%f%u'

# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.cache/zcache

# automatically load bash completion functions
autoload -U +X bashcompinit && bashcompinit

HISTFILE=~/.zhistory
HISTSIZE=50000
SAVEHIST=10000

#keybindings
alias ls='lsd --group-dirs first'
alias lt='lsd --tree'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias fre='sudo fc-cache -f -v && fc-cache -f -v'
#sources
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/share/fzf/key-bindings.zsh
#source /usr/share/fzf/completion.zsh

#exports
export LIBVA_DRIVER_NAME=iHD
export PATH=$PATH:/usr/lib/jvm/jdk-17-oracle-x64/bin/
#export LIBVA_DRIVER_NAME=i965


export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
