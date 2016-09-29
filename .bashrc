[[ -s "/usr/local/opt/chruby/share/chruby/chruby.sh" ]] && . "/usr/local/opt/chruby/share/chruby/chruby.sh"
[[ -s "$HOME/.git-completion.bash" ]] && . "$HOME/.git-completion.bash"

export PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '
[[ -s "$HOME/.git-prompt.sh" ]] && . "$HOME/.git-prompt.sh" && export PS1='\[\e[1;31m\][\u@\h \W$(__git_ps1 " (%s)")]\$\[\e[0m\] '
[[ -s "$HOME/.maven-completion.bash" ]] && . "$HOME/.maven-completion.bash"

export LC_CTYPE=en_US.UTF-8
export EDITOR=vim


alias ls="ls -G"
alias ll="ls -l"
alias la='ls -a'
alias ctags="/usr/local/bin/ctags -R --exclude=\.svn"
alias vi='vim'
alias kdiff='/Applications/kdiff3.app/Contents/MacOS/kdiff3'

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=/Developer/usr/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/opt/apache-maven-3.1.1/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

