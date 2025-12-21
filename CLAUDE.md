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
- **yazi/**: Yazi file manager configuration → symlinks to `~/.config/yazi/`

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

### Yazi
- `g h` - go to home directory
- `g c` - go to ~/.config
- `g d` - go to Downloads
- `g .` - go to dotfiles
- `Ctrl+h` - toggle hidden files
- `Ctrl+s` - open shell in current directory
- `Ctrl+n` - create file/directory
- `Space` or `v` - toggle selection
- `y` - yank (copy)
- `x` - cut
- `p` - paste
- `d` - delete
- `r` - rename

## External Dependencies

- **tmux**: TPM (Tmux Plugin Manager), catppuccin theme, vim-tmux-navigator
- **zsh**: Zinit (plugin manager), Powerlevel10k, fzf, zoxide, asdf
- **ghostty**: Ghostty terminal emulator
- **yazi**: Yazi file manager with Catppuccin Mocha theme
- **sesh + fzf**: Required for session picker (tmux `prefix + T` and zsh `s` alias)
- **nvim**: Neovim 0.11+, tree-sitter-cli

## Neovim Setup

### Requisitos

O nvim-treesitter (branch `main`) requer:

- Neovim 0.11+
- tree-sitter-cli

```bash
# Instalar tree-sitter-cli (macOS)
brew install tree-sitter
```

### Instalar Parsers

Apos instalar o tree-sitter-cli, abra o Neovim e rode:

```vim
:TSInstall elixir eex heex erlang bash lua markdown yaml
```

Ou via Lua:

```vim
:lua require("nvim-treesitter").install({"elixir", "eex", "heex", "erlang", "bash", "lua", "markdown", "yaml"})
```

### Verificar Instalacao

```vim
:checkhealth nvim-treesitter
```

Deve mostrar todos os parsers instalados e sem erros.
