################################################################################
# ZSH Configuration File
# This file contains settings for the Zsh shell, including:
# - History management
# - Command completion and fuzzy finding
# - Tool initialization (starship, zoxide, fzf)
# - Tool aliases and configurations (eza, pnpm)
################################################################################

################################################################################
# Source aliases
################################################################################
if [ -f ~/.aliases ]; then
    . ~/.aliases;
fi


################################################################################
# PROMPT AND SHELL APPEARANCE
################################################################################

# Initialize starship - a minimal, blazing fast, and extremely customizable prompt
eval "$(starship init zsh)"


################################################################################
# HISTORY MANAGEMENT
# Zsh history keeps a record of commands you've typed to enable command recall
# and search functionality
################################################################################

# Create cache directory and set history file location
mkdir -p ~/.cache/zsh
HISTFILE=~/.cache/zsh/history

# Maximum number of events stored in internal history list
HISTSIZE=10000000

# Maximum number of events saved in history file (persistent storage)
SAVEHIST=10000000

# ===== History Options =====
# APPEND_HISTORY: Write to history file immediately (instead of on shell exit)
setopt APPEND_HISTORY

# HIST_EXPIRE_DUPS_FIRST: Remove duplicate entries first when trimming history
setopt HIST_EXPIRE_DUPS_FIRST

# HIST_FIND_NO_DUPS: When searching history, skip duplicate results
setopt HIST_FIND_NO_DUPS

# HIST_IGNORE_ALL_DUPS: Never store duplicate commands - overwrites previous entry
setopt HIST_IGNORE_ALL_DUPS

# HIST_IGNORE_DUPS: Don't add consecutive duplicate commands to history
setopt HIST_IGNORE_DUPS

# HIST_IGNORE_SPACE: Don't store commands that start with a space character
# Useful for keeping sensitive commands (passwords, tokens) out of history
setopt HIST_IGNORE_SPACE

# HIST_NO_STORE: Don't store the history command itself in history
setopt HIST_NO_STORE

# HIST_REDUCE_BLANKS: Remove extra whitespace from commands before storing
setopt HIST_REDUCE_BLANKS

# HIST_SAVE_NO_DUPS: When saving history, skip duplicate entries
setopt HIST_SAVE_NO_DUPS

# INC_APPEND_HISTORY: Save each command to history immediately after execution
# (rather than waiting until shell exits)
setopt INC_APPEND_HISTORY

# SHARE_HISTORY: Share command history between all open zsh sessions in real-time
setopt SHARE_HISTORY

# Disable per-terminal session history (prevents separate history per terminal session)
SHELL_SESSION_HISTORY=0

# Load zsh completion system enhancements
zmodload -i zsh/complist

################################################################################
# ZOXIDE - Smart Directory Navigation
# Zoxide is a smarter cd command that learns your most-used directories
# and allows quick jumping with 'z' command
# See: https://github.com/ajeetdsouza/zoxide
################################################################################

eval "$(zoxide init zsh)"

# Override 'cd' command with 'z' for enhanced directory navigation
# Now you can type 'z' followed by a partial directory name to jump
alias cd="z"

################################################################################
# EZA - Next-Generation File Listing
# Eza is a modern replacement for the 'ls' command with better colors,
# icons, and git integration
# See: https://github.com/eza-community/eza
################################################################################

# Point to the eza configuration directory
export EZA_CONFIG_DIR="$HOME/.config/eza"

# Replace 'ls' with eza showing detailed info, all files, icons, and symlink targets
alias ls="eza --long --all --icons=\"always\" --show-symlinks"

# Add 'tree' command for recursive directory display
alias tree="eza --tree --all --icons=\"always\" --show-symlinks"

################################################################################
# FZF - Fuzzy Finder
# Fzf is a general-purpose command-line fuzzy finder that enables:
# - Fuzzy searching through files, history, and directories
# - Custom keybindings for enhanced shell integration
# - Searchable command history with Ctrl+R
# See: https://github.com/junegunn/fzf
################################################################################

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Configure fzf appearance and behavior using custom theme colors
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"


################################################################################
# PNPM - Package Manager Setup
# pnpm is a fast, disk space efficient package manager for Node.js projects
# It requires special PATH configuration to work properly
# See: https://pnpm.io
################################################################################

# Set pnpm home directory (macOS uses Library)
export PNPM_HOME="$HOME/Library/pnpm"

# Add pnpm to PATH if not already present
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

################################################################################
# GENERAL PATH MODIFICATIONS
################################################################################

# Add local bin directory to PATH for user-installed executables
export PATH="$HOME/.local/bin:$PATH"
