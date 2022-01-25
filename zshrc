#.zshrc

# set prompt
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' [%b]'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{214}%m%F{015}:%F{039}%~%F{015}${vcs_info_msg_0_}%F{240} > %F{reset}'

# set exports
export PATH=${PATH}:$HOME/bin:/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin:/usr/X11R6/bin
export LC_ALL=C

# User specific aliases and functions
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-256color

# history config
# ignore duplicate commands, ignore commands starting with a space
export HISTCONTROL=erasedups:ignorespace
# keep the last 5000 entries
export HISTSIZE=5000
# ignore commands in history
export HISTIGNORE='ls:ls -la:pwd:date:'

# source aliases file
if [ -f ~/.aliases ]; then
    . ~/.aliases;
fi
