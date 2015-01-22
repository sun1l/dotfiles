# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# separate aliases file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# set exports
export PATH=${PATH}:$HOME/bin:/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin/:/usr/local/bin:/usr/X11R6/bin
export LC_ALL=C

# change prompt
PS1="[\h: \[\e[0;31m\]\w\[\e[m\]]\$ "

# User specific aliases and functions
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-color

# history config
# ignore duplicate commands, ignore commands starting with a space
export HISTCONTROL=erasedups:ignorespace
# keep the last 5000 entries
export HISTSIZE=5000
# ignore commands in history
export HISTIGNORE='ls:ls -la:pwd:date:'


