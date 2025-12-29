return {
  "selimacerbas/mermaid-playground.nvim",
  dependencies = {
    {
      "barrett-ruth/live-server.nvim",
      opts = {
        args = { "--browser=google chrome" },
      },
    },
  },
  ft = { "markdown" },
  config = function()
    require("mermaid_playground").setup({
      auto_refresh = true,
      debounce_ms = 450,
      notify_on_refresh = false,
    })
  end,
  keys = {
    { "<leader>mps", "<cmd>MermaidPreviewStart<cr>", desc = "Mermaid: Start preview" },
    { "<leader>mpr", "<cmd>MermaidPreviewRefresh<cr>", desc = "Mermaid: Refresh" },
    { "<leader>mpS", "<cmd>MermaidPreviewStop<cr>", desc = "Mermaid: Stop" },
  },
}
