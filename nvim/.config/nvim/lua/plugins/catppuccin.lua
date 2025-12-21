return {
    {
      "catppuccin/nvim",
      lazy = false,
      name = "catppuccin",
      priority = 1000,
      config = function()
        require("catppuccin").setup({
          transparent_background = true,
          integrations = {
            telescope = {
              enabled = true,
              style = "nvchad",
            },
          },
        })
        vim.cmd.colorscheme "catppuccin-mocha"

        -- Telescope transparent background
        vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "NONE" })
      end
    }
  }