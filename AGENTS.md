# Repository Guidelines

## Project Structure & Module Organization
This is a dotfiles repo managed with GNU Stow. Each top-level directory is a stow package that mirrors its target location in your home directory.

- `nvim/` → `~/.config/nvim/`
- `tmux/` → `~/.config/tmux/`
- `ghostty/` → `~/.config/ghostty/`
- `zsh/` → `~/` (e.g., `.zshrc`, `.p10k.zsh`)

Within each package, keep paths aligned with the final destination (e.g., `tmux/.config/tmux/tmux.conf`).

## Build, Test, and Development Commands
There is no build system. Use GNU Stow to deploy and validate changes locally.

- `stow nvim` / `stow tmux` / `stow zsh` / `stow ghostty` — create symlinks into the target locations.
- `stow -D nvim` — remove symlinks for a package.
- `stow -R nvim` — restow a package after edits.

## Coding Style & Naming Conventions
- Match existing file styles within each tool’s config (Lua for Neovim, shell for Zsh, etc.).
- Keep indentation consistent with the file you are editing.
- Name stow packages after the tool they configure.
- Preserve target-path mirroring inside each package.

## Testing Guidelines
No automated tests are defined. Validate changes by launching the relevant tool and confirming behavior (e.g., `tmux`, `nvim`, `ghostty`, or a new shell session). If a config is sourced manually, note the command in your PR.

## Commit & Pull Request Guidelines
- Follow the existing commit tone: short, imperative, and often type-prefixed (e.g., `chore: update tmux`).
- PRs should list affected packages, link related issues if any, and note any manual validation performed.

## Notes & Dependencies
- GNU Stow is required for deployment.
- Key external tooling includes TPM for tmux, Zinit/Powerlevel10k for zsh, and Ghostty for the terminal config.
