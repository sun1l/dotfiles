# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
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

# add alias
alias ls='ls -la'
# get rid of command not found
alias cd..='cd ..'
alias ..='cd ..'
# set vim as default
alias vi=vim

# better safe then sorry
# do not delete / or prompt if deleting more than 3 files at a time
alias rm='rm -I --preserve-root'
 
# confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# directory shortcuts
alias cdsites='cd ~/Sites/'

