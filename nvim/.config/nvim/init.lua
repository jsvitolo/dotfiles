-- Neovim config
-- Managed with GNU Stow

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Opcoes basicas
vim.opt.number = true           -- Numeros de linha
vim.opt.relativenumber = true   -- Numeros relativos
vim.opt.mouse = "a"             -- Mouse habilitado
vim.opt.ignorecase = true       -- Busca case-insensitive
vim.opt.smartcase = true        -- Busca case-sensitive se tiver maiuscula
vim.opt.hlsearch = false        -- Nao destacar busca
vim.opt.wrap = false            -- Nao quebrar linhas
vim.opt.breakindent = true      -- Indentacao em linhas quebradas
vim.opt.tabstop = 2             -- Tab = 2 espacos
vim.opt.shiftwidth = 2          -- Indentacao = 2 espacos
vim.opt.expandtab = true        -- Tab vira espacos
vim.opt.termguicolors = true    -- Cores 24-bit
vim.opt.signcolumn = "yes"      -- Coluna de sinais sempre visivel
vim.opt.updatetime = 250        -- Tempo de atualizacao
vim.opt.clipboard = "unnamedplus" -- Clipboard do sistema

-- Atalhos basicos
vim.keymap.set("n", "<leader>w", "<cmd>write<cr>", { desc = "Salvar" })
vim.keymap.set("n", "<leader>q", "<cmd>quit<cr>", { desc = "Sair" })
