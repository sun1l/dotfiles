# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# set exports
export PATH=${PATH}:$HOME/bin:/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin/:/home/y/bin:/usr/local/bin:/usr/X11R6/bin
export LC_ALL=C

# Change prompt if logged in a yroot
if [ "x$YROOT_NAME" != "x" ]; then
    PS1="[$YROOT_NAME: \[\e[0;31m\]\w\[\e[m\]]\$ "
else
    PS1="[\h: \[\e[0;31m\]\w\[\e[m\]]\$ "
fi

# User specific aliases and functions
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-color

# Lego exports
# export SVN_SSH=/usr/local/bin/yssh
# export SVNROOT=svn+ssh://svn.corp.yahoo.com/
# export SVN_SSH='/usr/local/bin/yssh'

