[[ -s "/usr/local/opt/chruby/share/chruby/chruby.sh" ]] && . "/usr/local/opt/chruby/share/chruby/chruby.sh"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.git-completion.bash" ]] && . "$HOME/.git-completion.bash"
[[ -s "$HOME/.git-prompt.sh" ]] && . "$HOME/.git-prompt.sh"
[[ -s "$HOME/.maven-completion.bash" ]] && . "$HOME/.maven-completion.bash"

export PS1='\[\e[1;31m\][\u@\h \W$(__git_ps1 " (%s)")]\$\[\e[0m\] '
export LC_CTYPE=en_US.UTF-8
export EDITOR=vim


export PGDATA=/Library/PostgreSQL/9.2/data

#export PATH=$PATH:/Library/PostgreSQL/9.1/bin
#export PGDATA=/Library/PostgreSQL/9.1/data

alias ls="ls -G"
alias ll="ls -l"
alias la='ls -a'
alias ctags="/usr/local/bin/ctags -R --exclude=\.svn"
alias psql='/Library/PostgreSQL/9.2/bin/psql'
alias vi='vim'
alias kdiff='/Applications/kdiff3.app/Contents/MacOS/kdiff3'

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=/Library/PostgreSQL/9.2/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/Developer/usr/bin:$PATH
export PATH=/usr/local/git/bin:$PATH
export PATH=/opt/apache-maven-3.1.1/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
