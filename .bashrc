export PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '
export LC_CTYPE=en_US.UTF-8
export EDITOR=vim

export PATH=/Developer/usr/bin:$PATH

export PATH=/Library/PostgreSQL/9.2/bin:$PATH
export PGDATA=/Library/PostgreSQL/9.2/data

#export PATH=$PATH:/Library/PostgreSQL/9.1/bin
#export PGDATA=/Library/PostgreSQL/9.1/data

export JAVA_OPTS=-d32
export JRUBY_OPTS=--1.9

alias ls="ls -G"
alias ll="ls -l"
alias la='ls -a'
alias ctags="/usr/local/bin/ctags -R --exclude=\.svn"
alias psql='/Library/PostgreSQL/9.2/bin/psql'
alias vi='vim'
alias kdiff='/Applications/kdiff3.app/Contents/MacOS/kdiff3'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source /usr/local/opt/chruby/share/chruby/chruby.sh
