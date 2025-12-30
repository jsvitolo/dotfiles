# Pacotes Homebrew

Lista de todos os pacotes instalados via Homebrew.

## Formulae

### Terminal e Shell

| Pacote | Descricao |
|--------|-----------|
| `tmux` | Terminal multiplexer |
| `neovim` | Ambitious Vim-fork focused on extensibility and agility |
| `zoxide` | Shell extension to navigate your filesystem faster |

### Ferramentas CLI

| Pacote | Descricao |
|--------|-----------|
| `bat` | Clone of cat(1) with syntax highlighting and Git integration |
| `fd` | Simple, fast and user-friendly alternative to find |
| `fzf` | Command-line fuzzy finder written in Go |
| `ripgrep` | Search tool like grep and The Silver Searcher |
| `tree` | Display directories as trees (with optional color/HTML output) |
| `treemd` | TUI and CLI dual pane markdown viewer |

### Git e Versionamento

| Pacote | Descricao |
|--------|-----------|
| `git` | Distributed revision control system |
| `lazygit` | Simple terminal UI for git commands |
| `stow` | Organize software neatly under a single directory tree (e.g. /usr/local) |

### Gerenciadores de Sessao

| Pacote | Descricao |
|--------|-----------|
| `sesh` | Smart session manager for the terminal |
| `tmuxinator` | Manage complex tmux sessions easily |

### File Manager

| Pacote | Descricao |
|--------|-----------|
| `yazi` | Blazing fast terminal file manager written in Rust, based on async I/O |

### Kubernetes e Cloud

| Pacote | Descricao |
|--------|-----------|
| `awscli` | Official Amazon AWS command-line interface |
| `kubernetes-cli` | Kubernetes command-line interface |
| `kubectx` | Tool that can switch between kubectl contexts easily and create aliases |

### Gerenciadores de Versao

| Pacote | Descricao |
|--------|-----------|
| `asdf` | Extendable version manager with support for Ruby, Node.js, Erlang & more |
| `node` | Open-source, cross-platform JavaScript runtime environment |
| `python@3.13` | Interpreted, interactive, object-oriented programming language |
| `ruby` | Powerful, clean, object-oriented scripting language |

### Neovim Dependencies

| Pacote | Descricao |
|--------|-----------|
| `tree-sitter-cli` | Parser generator tool |

### AI Tools

| Pacote | Descricao |
|--------|-----------|
| `gemini-cli` | Interact with Google Gemini AI models from the command-line |
| `opencode` | AI coding agent, built for the terminal |

## Casks

### Terminal

| Pacote | Descricao |
|--------|-----------|
| `ghostty` | Terminal emulator |

### Fontes

| Pacote | Descricao |
|--------|-----------|
| `font-jetbrains-mono-nerd-font` | Nerd Font patched JetBrains Mono |
| `font-hack-nerd-font` | Nerd Font patched Hack |

### AI Assistants

| Pacote | Descricao |
|--------|-----------|
| `chatgpt` | OpenAI ChatGPT desktop app |
| `claude` | Anthropic Claude desktop app |
| `claude-code` | Anthropic Claude Code CLI |
| `codex` | OpenAI Codex CLI |
| `cursor` | AI-first code editor |

### Development

| Pacote | Descricao |
|--------|-----------|
| `jetbrains-toolbox` | JetBrains tools manager |
| `orbstack` | Fast, light, simple Docker & Linux on macOS |

### Browsers e Produtividade

| Pacote | Descricao |
|--------|-----------|
| `google-chrome` | Web browser |
| `notion` | App to write, plan, collaborate, and get organized |

### VPN

| Pacote | Descricao |
|--------|-----------|
| `pritunl` | OpenVPN client |

## Instalacao Rapida

### Formulae essenciais para dotfiles

```bash
brew install asdf awscli bat fd fzf git kubectx kubernetes-cli lazygit neovim node ripgrep sesh stow tmux tmuxinator tree tree-sitter-cli yazi zoxide
```

### Casks essenciais para dotfiles

```bash
brew install --cask ghostty font-jetbrains-mono-nerd-font
```

### AI Tools (opcional)

```bash
brew install gemini-cli opencode
brew install --cask chatgpt claude claude-code codex cursor
```

### Development (opcional)

```bash
brew install --cask jetbrains-toolbox orbstack
```

### Produtividade (opcional)

```bash
brew install --cask google-chrome notion pritunl
```
