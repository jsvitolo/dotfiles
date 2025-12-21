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
            },
          },
        })
        vim.cmd.colorscheme "catppuccin-mocha"

        -- Transparent backgrounds for floating windows
        local function set_transparent_hl()
          local hl = vim.api.nvim_set_hl

          -- Telescope
          hl(0, "TelescopeNormal", { bg = "NONE" })
          hl(0, "TelescopeBorder", { bg = "NONE", fg = "#89b4fa" })
          hl(0, "TelescopePromptNormal", { bg = "NONE" })
          hl(0, "TelescopePromptBorder", { bg = "NONE", fg = "#89b4fa" })
          hl(0, "TelescopePromptTitle", { bg = "NONE", fg = "#94e2d5" })
          hl(0, "TelescopeResultsNormal", { bg = "NONE" })
          hl(0, "TelescopeResultsBorder", { bg = "NONE", fg = "#89b4fa" })
          hl(0, "TelescopeResultsTitle", { bg = "NONE", fg = "#94e2d5" })
          hl(0, "TelescopePreviewNormal", { bg = "NONE" })
          hl(0, "TelescopePreviewBorder", { bg = "NONE", fg = "#89b4fa" })
          hl(0, "TelescopePreviewTitle", { bg = "NONE", fg = "#94e2d5" })

          -- Lazy and floating windows
          hl(0, "LazyNormal", { bg = "NONE" })
          hl(0, "LazyBackdrop", { bg = "NONE" })
          hl(0, "NormalFloat", { bg = "NONE" })
          hl(0, "FloatBorder", { bg = "NONE", fg = "#89b4fa" })
          hl(0, "FloatTitle", { bg = "NONE", fg = "#94e2d5" })
        end

        set_transparent_hl()

        vim.api.nvim_create_autocmd("ColorScheme", {
          callback = set_transparent_hl,
        })
      end
    }
  }