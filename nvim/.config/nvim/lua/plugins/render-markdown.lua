return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  ft = { "markdown" },
  opts = {
    completions = {
      lsp = { enabled = true },
    },
    code = {
      sign = false,
      width = "block",
      right_pad = 1,
      border = "thin",
      -- Usar highlight mais suave em vez de fundo sólido
      highlight = "RenderMarkdownCode",
    },
  },
  config = function(_, opts)
    -- Background transparente para code blocks
    vim.api.nvim_set_hl(0, "RenderMarkdownCode", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "RenderMarkdownCodeInline", { bg = "NONE" })
    require("render-markdown").setup(opts)
  end,
}
