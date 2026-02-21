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
brew install tmux neovim zsh direnv
```

### Ferramentas CLI

```bash
brew install fzf zoxide lazygit fd ripgrep bat tree glow watch
```

### Monitores de Sistema

```bash
brew install btop htop
```

### Gerenciadores de Sessao

```bash
brew install sesh tmuxinator
```

### GitHub CLI

```bash
brew install gh
```

### Kubernetes e Cloud

```bash
brew install awscli kubernetes-cli kubectx
```

### Node.js e Python

```bash
brew install node uv
```

### File Manager (Yazi)

```bash
brew install yazi ffmpegthumbnailer poppler sevenzip
```

### Neovim Dependencies

```bash
brew install tree-sitter-cli
```

### Gerenciador de Versoes

```bash
brew install asdf
```

### AI CLIs

```bash
brew install gemini-cli
```

### Utilitarios

```bash
brew install treemd
```

### Todos de uma vez

```bash
brew install stow git tmux neovim direnv fzf zoxide lazygit fd ripgrep bat tree glow watch btop htop sesh tmuxinator gh awscli kubernetes-cli kubectx node uv yazi ffmpegthumbnailer poppler sevenzip tree-sitter-cli asdf gemini-cli treemd
```

## Aplicativos (Casks)

### Terminal Emulator

```bash
brew install --cask ghostty
```

### Fontes

```bash
brew install --cask font-jetbrains-mono-nerd-font font-hack-nerd-font
```

### Desenvolvimento

```bash
brew install --cask cursor jetbrains-toolbox
```

### Containers

```bash
brew install --cask orbstack
```

### API Testing

```bash
brew install --cask postman
```

### AI Apps

```bash
brew install --cask claude chatgpt
```

### Navegador

```bash
brew install --cask google-chrome
```

### Produtividade

```bash
brew install --cask notion
```

### VPN

```bash
brew install --cask pritunl
```

### Todos os casks de uma vez

```bash
brew install --cask ghostty font-jetbrains-mono-nerd-font font-hack-nerd-font cursor jetbrains-toolbox orbstack postman claude chatgpt google-chrome notion pritunl
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
stow zsh tmux nvim ghostty yazi tmuxinator

# Ou individualmente
stow zsh
stow tmux
stow nvim
stow ghostty
stow yazi
stow tmuxinator
```

## Configuracoes Pos-Instalacao

### Zsh

O Zinit sera instalado automaticamente na primeira execucao do zsh.
Os plugins (powerlevel10k, zsh-syntax-highlighting, etc.) tambem sao instalados automaticamente.

```bash
# Trocar shell padrao para zsh
chsh -s $(which zsh)
```

### Secrets (API Keys)

Crie um arquivo para suas chaves de API (nao commitado):

```bash
touch ~/.secrets
chmod 600 ~/.secrets
echo 'export ANTHROPIC_API_KEY="sua-chave"' >> ~/.secrets
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

### asdf

Adicione ao final do `.zshrc` (ja incluido neste dotfiles):

```bash
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
```

### direnv

Ja configurado no `.zshrc` com:

```bash
eval "$(direnv hook zsh)"
```

## Estrutura dos Pacotes

| Pacote | Destino |
|--------|---------|
| `zsh/` | `~/` (.zshrc, .p10k.zsh) |
| `tmux/` | `~/.config/tmux/` |
| `nvim/` | `~/.config/nvim/` |
| `ghostty/` | `~/.config/ghostty/` |
| `yazi/` | `~/.config/yazi/` |
| `tmuxinator/` | `~/.config/tmuxinator/` |

## Resumo de Comandos

```bash
# Instalacao completa (copie e cole)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Formulae
brew install stow git tmux neovim direnv fzf zoxide lazygit fd ripgrep bat tree glow watch btop htop sesh tmuxinator gh awscli kubernetes-cli kubectx node uv yazi ffmpegthumbnailer poppler sevenzip tree-sitter-cli asdf gemini-cli treemd

# Casks
brew install --cask ghostty font-jetbrains-mono-nerd-font font-hack-nerd-font cursor jetbrains-toolbox orbstack postman claude chatgpt google-chrome notion pritunl

# Clone e deploy
git clone https://github.com/SEU_USUARIO/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow zsh tmux nvim ghostty yazi tmuxinator

# TPM
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

# Trocar shell
chsh -s $(which zsh)

# Secrets
touch ~/.secrets && chmod 600 ~/.secrets
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
brew install tree-sitter-cli
```

### Tmux: plugins nao carregam

Reinstale o TPM e os plugins:

```bash
rm -rf ~/.config/tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
# Abra tmux e pressione prefix + I
```

### Yazi: previews nao funcionam

Instale as dependencias opcionais:

```bash
brew install ffmpegthumbnailer poppler sevenzip
```
