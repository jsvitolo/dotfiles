# Instalacao do Dotfiles

Guia completo para configurar este dotfiles em uma maquina nova.

## Pre-requisitos

### Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Xcode Command Line Tools (macOS)

```bash
xcode-select --install
```

## Pacotes Homebrew

### Essenciais

```bash
brew install stow git
```

### Terminal e Shell

```bash
brew install tmux neovim zsh
```

### Ferramentas CLI

```bash
brew install fzf zoxide lazygit fd ripgrep bat tree
```

### Gerenciadores de Sessao e Git

```bash
brew install sesh gitmux tmuxinator
```

### Kubernetes e Cloud

```bash
brew install awscli kubernetes-cli kubectx
```

### Node.js (para plugins do Neovim)

```bash
brew install node
```

### Pacotes npm globais

```bash
npm install -g live-server
```

### File Manager

```bash
brew install yazi ffmpegthumbnailer poppler
```

### Neovim Dependencies

```bash
brew install tree-sitter
```

### Todos de uma vez

```bash
brew install stow git tmux neovim zsh fzf zoxide lazygit fd ripgrep bat tree sesh gitmux tmuxinator awscli kubernetes-cli kubectx node yazi ffmpegthumbnailer poppler tree-sitter asdf
```

## Terminal Emulator

### Ghostty

```bash
brew install --cask ghostty
```

## Fontes

### JetBrainsMono Nerd Font

```bash
brew install --cask font-jetbrains-mono-nerd-font
```

## Gerenciadores de Versao

### asdf

```bash
brew install asdf
```

Adicione ao final do `.zshrc` (ja incluido neste dotfiles):

```bash
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
```

## Instalacao dos Dotfiles

### 1. Clone o repositorio

```bash
git clone https://github.com/SEU_USUARIO/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### 2. Deploy com Stow

```bash
# Todos os pacotes
stow zsh tmux nvim ghostty yazi

# Ou individualmente
stow zsh
stow tmux
stow nvim
stow ghostty
stow yazi
```

## Configuracoes Pos-Instalacao

### Zsh

O Zinit sera instalado automaticamente na primeira execucao do zsh.
Os plugins (powerlevel10k, zsh-syntax-highlighting, etc.) tambem sao instalados automaticamente.

```bash
# Trocar shell padrao para zsh
chsh -s $(which zsh)
```

### Tmux

#### Instalar TPM (Tmux Plugin Manager)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

#### Instalar plugins do Tmux

1. Abra o tmux
2. Pressione `prefix + I` (Ctrl-a + I) para instalar os plugins

### Neovim

#### Instalar plugins

Os plugins sao instalados automaticamente via lazy.nvim ao abrir o Neovim.

#### Instalar parsers do Treesitter

```vim
:TSInstall elixir eex heex erlang bash lua markdown yaml javascript typescript
```

#### Verificar instalacao

```vim
:checkhealth
```

### Powerlevel10k

Na primeira execucao, o assistente de configuracao sera iniciado automaticamente.
Ou execute manualmente:

```bash
p10k configure
```

## Estrutura dos Pacotes

| Pacote | Destino |
|--------|---------|
| `zsh/` | `~/` (.zshrc, .p10k.zsh) |
| `tmux/` | `~/.config/tmux/` |
| `nvim/` | `~/.config/nvim/` |
| `ghostty/` | `~/.config/ghostty/` |
| `yazi/` | `~/.config/yazi/` |

## Resumo de Comandos

```bash
# Instalacao completa (copie e cole)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install stow git tmux neovim zsh fzf zoxide lazygit fd ripgrep bat tree sesh gitmux tmuxinator awscli kubernetes-cli kubectx node yazi ffmpegthumbnailer poppler tree-sitter asdf
brew install --cask ghostty font-jetbrains-mono-nerd-font
npm install -g live-server

# Clone e deploy
git clone https://github.com/SEU_USUARIO/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow zsh tmux nvim ghostty yazi

# TPM
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

# Trocar shell
chsh -s $(which zsh)
```

## Troubleshooting

### Stow: conflito de arquivos

Se houver arquivos existentes, faca backup e remova:

```bash
mv ~/.zshrc ~/.zshrc.backup
stow zsh
```

### Neovim: erro de treesitter

Verifique se tree-sitter-cli esta instalado:

```bash
brew install tree-sitter
```

### Tmux: plugins nao carregam

Reinstale o TPM e os plugins:

```bash
rm -rf ~/.config/tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
# Abra tmux e pressione prefix + I
```
