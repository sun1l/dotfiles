#.bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc;
fi

# source aliases file
if [ -f ~/.aliases ]; then
    . ~/.aliases;
fi

# git command autocomplete
# http://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks
if [ -f ~/git-completion.bash ]; then
    . ~/git-completion.bash;
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
# append to the Bash history file, rather than overwriting it
shopt -s histappend;

