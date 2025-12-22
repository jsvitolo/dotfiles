return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        show_end_of_buffer = false,
        term_colors = true,
        no_italic = false,
        no_bold = false,
        integrations = {
          treesitter = true,
          gitsigns = true,
          snacks = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
          indent_blankline = { enabled = true },
          which_key = true,
          mason = true,
        },
        highlight_overrides = {
          mocha = function(colors)
            return {
              -- Snacks picker (transparent)
              SnacksPickerInput = { bg = "NONE" },
              SnacksPickerInputBorder = { bg = "NONE", fg = colors.surface1 },
              SnacksPickerList = { bg = "NONE" },
              SnacksPickerListBorder = { bg = "NONE", fg = colors.surface1 },
              SnacksPickerPreview = { bg = "NONE" },
              SnacksPickerPreviewBorder = { bg = "NONE", fg = colors.surface1 },
              SnacksPickerMatch = { fg = colors.peach, bold = true },
              SnacksPickerDir = { fg = colors.overlay1 },
              SnacksPickerFile = { fg = colors.text },
              SnacksPickerTitle = { fg = colors.base, bg = colors.blue, bold = true },

              -- Explorer (transparent)
              SnacksExplorerNormal = { bg = "NONE" },

              -- Floating windows (transparent)
              NormalFloat = { bg = "NONE" },
              FloatBorder = { bg = "NONE", fg = colors.surface1 },
              FloatTitle = { fg = colors.base, bg = colors.blue, bold = true },

              -- Lazy (transparent)
              LazyNormal = { bg = "NONE" },

              -- Cursor line
              CursorLine = { bg = colors.surface0 },
              CursorLineNr = { fg = colors.lavender, bold = true },

              -- Line numbers
              LineNr = { fg = colors.surface1 },
            }
          end,
        },
      })

      vim.cmd.colorscheme "catppuccin"
    end,
  },
}
