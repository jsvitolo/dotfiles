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

        -- Telescope transparent background
        local function set_telescope_hl()
          local hl = vim.api.nvim_set_hl
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
        end

        set_telescope_hl()

        vim.api.nvim_create_autocmd("ColorScheme", {
          callback = set_telescope_hl,
        })
      end
    }
  }