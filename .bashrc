[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PATH=$PATH:/Library/PostgreSQL/9.1/bin
export PGDATA=/Library/PostgreSQL/9.1/data
export PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '
export LC_CTYPE=en_US.UTF-8
export EDITOR=vim

export JAVA_OPTS=-d32
export JRUBY_OPTS=--1.9


alias ls="ls -G"
alias ll="ls -l"
alias ctags="/usr/local/bin/ctags -R --exclude=\.svn"


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
