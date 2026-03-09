# dotfiles

Personal macOS dotfiles.

## Files

| File | Destination | Description |
|------|-------------|-------------|
| `zshrc` | `~/.zshrc` | Zsh config — prompt, history, aliases, tools |
| `starship.toml` | `~/.config/starship.toml` | Starship prompt theme (Gruvbox Dark) |
| `vimrc` | `~/.vimrc` | Vim settings |
| `aliases` | `~/.aliases` | Shell aliases (legacy) |
| `bashrc` | `~/.bashrc` | Bash config (legacy) |

## Tools

The zshrc relies on the following tools being installed:

- **[starship](https://starship.rs)** — cross-shell prompt
- **[zoxide](https://github.com/ajeetdsouza/zoxide)** — smarter `cd` (aliased as `cd`)
- **[eza](https://github.com/eza-community/eza)** — modern `ls` replacement (aliased as `ls` and `tree`)
- **[fzf](https://github.com/junegunn/fzf)** — fuzzy finder with Tokyo Night color theme
- **[pnpm](https://pnpm.io)** — Node.js package manager

Install on macOS with Homebrew:

```sh
brew install starship zoxide eza fzf
```

## Setup

Symlink files to their destinations:

```sh
ln -sf ~/code/dotfiles/zshrc ~/.zshrc
mkdir -p ~/.config
ln -sf ~/code/dotfiles/starship.toml ~/.config/starship.toml
ln -sf ~/code/dotfiles/vimrc ~/.vimrc
```

## zshrc highlights

- History stored in `~/.cache/zsh/history` with 10M entry limit, shared across all sessions with deduplication
- `ls` → `eza --long --all --icons --show-symlinks`
- `tree` → `eza --tree --all --icons --show-symlinks`
- `cd` → `z` (zoxide)
- fzf keybindings and completions with Tokyo Night theme
- pnpm and `~/.local/bin` on PATH
