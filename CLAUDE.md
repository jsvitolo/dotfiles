# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a dotfiles repository managed with GNU Stow. Each top-level directory (nvim, tmux) is a "stow package" that mirrors the target directory structure under `~/.config/`.

## Using GNU Stow

```bash
# Deploy a package (creates symlinks in ~/.config/)
stow nvim
stow tmux

# Remove a package
stow -D nvim
stow -D tmux

# Restow (useful after changes)
stow -R nvim
```

## Architecture

- **nvim/**: Neovim configuration → symlinks to `~/.config/nvim/`
- **tmux/**: Tmux configuration → symlinks to `~/.config/tmux/`
- **zsh/**: Zsh configuration → symlinks to `~/` (`.zshrc`, `.p10k.zsh`)
- **ghostty/**: Ghostty terminal configuration → symlinks to `~/.config/ghostty/`

The directory structure inside each package mirrors the target location. For example:
- `tmux/.config/tmux/tmux.conf` → `~/.config/tmux/tmux.conf`
- `zsh/.zshrc` → `~/.zshrc`

## Key Bindings Reference

### Tmux
- Prefix: `Ctrl-a` (not the default `Ctrl-b`)
- `prefix + |` - split vertical
- `prefix + -` - split horizontal
- `prefix + h/j/k/l` - resize panes
- `prefix + m` - toggle zoom
- `prefix + r` - reload config
- `prefix + T` - sesh session picker (requires sesh + fzf)

### Neovim
- Leader: `Space`
- `<leader>w` - save
- `<leader>q` - quit

### Zsh
- `Ctrl+p` / `Ctrl+n` - history search backward/forward
- `s` - sesh connect (alias)
- `gg` - lazygit (alias)
- `c` - clear (alias)

## External Dependencies

- **tmux**: TPM (Tmux Plugin Manager), catppuccin theme, vim-tmux-navigator
- **zsh**: Zinit (plugin manager), Powerlevel10k, fzf, zoxide, asdf
- **ghostty**: Ghostty terminal emulator
- **sesh + fzf**: Required for session picker (tmux `prefix + T` and zsh `s` alias)
