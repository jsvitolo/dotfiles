# Telescope Keymaps

Leader key: `Space`

## Busca de Arquivos

| Keymap | Comando | Descricao |
|--------|---------|-----------|
| `<leader>ff` | `:Telescope find_files` | Buscar arquivos no projeto |
| `<leader>fg` | `:Telescope live_grep` | Buscar texto em arquivos (ripgrep) |
| `<leader>fw` | `:Telescope grep_string` | Buscar palavra sob o cursor |
| `<leader>fr` | `:Telescope oldfiles` | Arquivos recentes |

## Buffers e Navegacao

| Keymap | Comando | Descricao |
|--------|---------|-----------|
| `<leader>fb` | `:Telescope buffers` | Listar buffers abertos |
| `<leader>fh` | `:Telescope help_tags` | Buscar na documentacao |
| `<leader>fc` | `:Telescope commands` | Listar comandos disponiveis |
| `<leader>fk` | `:Telescope keymaps` | Listar keymaps |

## LSP

| Keymap | Comando | Descricao |
|--------|---------|-----------|
| `<leader>fd` | `:Telescope diagnostics` | Listar diagnosticos/erros |
| `<leader>fs` | `:Telescope lsp_document_symbols` | Simbolos do documento atual |

## Git

| Keymap | Comando | Descricao |
|--------|---------|-----------|
| `<leader>gc` | `:Telescope git_commits` | Historico de commits |
| `<leader>gb` | `:Telescope git_branches` | Listar branches |
| `<leader>gs` | `:Telescope git_status` | Status do git |

## Navegacao dentro do Telescope

| Keymap | Acao |
|--------|------|
| `<C-j>` | Proximo item |
| `<C-k>` | Item anterior |
| `<C-q>` | Enviar selecao para quickfix list |
| `<C-d>` | Deletar buffer (no picker de buffers) |
| `<Esc>` | Fechar |
| `q` | Fechar (modo normal) |
