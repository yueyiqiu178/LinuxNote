# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -liahtr'
alias hh='history -a'


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
