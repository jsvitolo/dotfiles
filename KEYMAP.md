# Keymaps

Referencia de atalhos de teclado para todas as ferramentas.

## Tmux

**Prefix:** `Ctrl-a`

### Basico

| Atalho | Descricao |
|--------|-----------|
| `prefix + r` | Recarregar configuracao |
| `prefix + T` | Sesh session picker (fzf) |

### Paineis

| Atalho | Descricao |
|--------|-----------|
| `prefix + \|` | Dividir verticalmente |
| `prefix + -` | Dividir horizontalmente |
| `prefix + h` | Redimensionar para esquerda |
| `prefix + j` | Redimensionar para baixo |
| `prefix + k` | Redimensionar para cima |
| `prefix + l` | Redimensionar para direita |
| `prefix + m` | Toggle zoom do painel |
| `prefix + x` | Fechar painel (sem confirmacao) |

### Navegacao (vim-tmux-navigator)

| Atalho | Descricao |
|--------|-----------|
| `Ctrl-h` | Mover para painel da esquerda |
| `Ctrl-j` | Mover para painel de baixo |
| `Ctrl-k` | Mover para painel de cima |
| `Ctrl-l` | Mover para painel da direita |

### Sesh Picker (prefix + T)

| Atalho | Descricao |
|--------|-----------|
| `Ctrl-a` | Listar todas sessoes |
| `Ctrl-t` | Listar sessoes tmux |
| `Ctrl-g` | Listar configs |
| `Ctrl-x` | Listar zoxide |
| `Ctrl-f` | Buscar diretorios |
| `Ctrl-d` | Matar sessao selecionada |

### TPM (Plugin Manager)

| Atalho | Descricao |
|--------|-----------|
| `prefix + I` | Instalar plugins |
| `prefix + U` | Atualizar plugins |

---

## Neovim

**Leader:** `Space`

### Geral

| Atalho | Descricao |
|--------|-----------|
| `<leader>h` | Limpar highlight de busca |
| `Ctrl-h/j/k/l` | Navegar entre paineis |

### Explorer (Snacks)

| Atalho | Descricao |
|--------|-----------|
| `<leader>e` | Abrir Explorer |
| `<leader>o` | Focar no Explorer |

### Busca (Snacks Picker)

| Atalho | Descricao |
|--------|-----------|
| `<leader><space>` | Smart Find |
| `<leader>ff` | Find Files |
| `<leader>fr` | Recent Files |
| `<leader>fg` | Git Files |
| `<leader>/` | Grep |
| `<leader>sw` | Grep palavra sob cursor |
| `<leader>sb` | Buscar linhas no buffer |
| `<leader>ss` | Document Symbols |

### Buffers

| Atalho | Descricao |
|--------|-----------|
| `<leader>bb` | Listar buffers |
| `<leader>bd` | Deletar buffer |

### Git (Snacks)

| Atalho | Descricao |
|--------|-----------|
| `<leader>gg` | Lazygit |
| `<leader>gb` | Git branches |
| `<leader>gl` | Git log |
| `<leader>gs` | Git status |

### Help

| Atalho | Descricao |
|--------|-----------|
| `<leader>sh` | Help |
| `<leader>sk` | Keymaps |

### LSP

| Atalho | Descricao |
|--------|-----------|
| `K` | Hover (documentacao) |
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `grn` | Rename |
| `gra` | Code action |
| `grr` | References |
| `gri` | Implementation |
| `<leader>cd` | Show diagnostic |
| `<leader>ih` | Toggle inlay hints |

### Mermaid Preview

| Atalho | Descricao |
|--------|-----------|
| `<leader>mps` | Start preview |
| `<leader>mpr` | Refresh |
| `<leader>mpS` | Stop |

### Telescope (dentro do picker)

| Atalho | Descricao |
|--------|-----------|
| `Ctrl-j` | Proximo item |
| `Ctrl-k` | Item anterior |
| `Ctrl-q` | Enviar para quickfix |
| `Ctrl-d` | Deletar buffer (em buffers) |
| `Esc` | Fechar |

---

## Zsh

### Navegacao no Historico

| Atalho | Descricao |
|--------|-----------|
| `Ctrl-p` | Buscar historico (anterior) |
| `Ctrl-n` | Buscar historico (proximo) |
| `Ctrl-w` | Deletar palavra anterior |

### Aliases

| Alias | Comando |
|-------|---------|
| `s` | Sesh connect com fzf |
| `gg` | Lazygit |
| `c` | Clear |
| `vim` | Neovim |

---

## Yazi

### Navegacao

| Atalho | Descricao |
|--------|-----------|
| `g h` | Ir para home (~) |
| `g c` | Ir para ~/.config |
| `g d` | Ir para Downloads |
| `g D` | Ir para Documents |
| `g .` | Ir para dotfiles |

### Arquivos

| Atalho | Descricao |
|--------|-----------|
| `Ctrl-h` | Toggle arquivos ocultos |
| `Ctrl-s` | Abrir shell no diretorio atual |
| `Ctrl-n` | Criar arquivo/diretorio |

### Selecao

| Atalho | Descricao |
|--------|-----------|
| `Space` ou `v` | Toggle selecao |
| `Ctrl-a` | Selecionar todos |
| `Ctrl-r` | Desselecionar todos |
| `y` | Copiar (yank) |
| `Y` | Cancelar yank |
| `x` | Recortar (cut) |
| `p` | Colar (paste) |
| `d` | Deletar |
| `r` | Renomear |

### Input (modo de edicao)

| Atalho | Descricao |
|--------|-----------|
| `Ctrl-a` | Ir para inicio da linha |
| `Ctrl-e` | Ir para fim da linha |

---

## Ghostty

Usa atalhos padrao do macOS.

| Atalho | Descricao |
|--------|-----------|
| `Cmd-t` | Nova aba |
| `Cmd-w` | Fechar aba |
| `Cmd-n` | Nova janela |
| `Cmd-,` | Configuracoes |
| `Cmd-+/-` | Aumentar/diminuir fonte |
| `Cmd-0` | Resetar tamanho da fonte |
