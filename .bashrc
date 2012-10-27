[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PATH=$PATH:/Library/PostgreSQL/9.0/bin
export PGDATA=/Library/PostgreSQL/9.0/data
export JSTESTDRIVER_HOME=~/bin

export PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -a'
alias ctags='/usr/local/bin/ctags'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
