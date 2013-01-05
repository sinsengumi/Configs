# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# env
PS1='\[\e[1;33m\][\u@\h \W]$ \[\e[00m\]'
PAGER=less
HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls:ll:la:rm -rf *:' # Ignore the ls command as well

# alias
alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ls -A'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cl='clear'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias df='df -h'
alias du='du -h'

alias more=less
alias vi=vim
