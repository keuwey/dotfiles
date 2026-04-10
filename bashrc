#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --color=auto'
alias grep='grep --color=auto'
alias cat='bat'
alias update="yay && flatpak upgrade"

PS1='[\u@\h \W]\$ '

. "$HOME/.local/bin/env"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export INPUTRC=~/.inputrc
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
