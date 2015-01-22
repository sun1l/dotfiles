# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# set exports
export PATH=${PATH}:$HOME/bin:/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin/:/usr/local/bin:/usr/X11R6/bin
export LC_ALL=C

# Change prompt
PS1="[\h: \[\e[0;31m\]\w\[\e[m\]]\$ "

# User specific aliases and functions
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-color

