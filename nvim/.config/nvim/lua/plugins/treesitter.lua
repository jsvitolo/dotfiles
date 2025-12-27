return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install({
        "elixir",
        "eex",
        "heex",
        "erlang",
        "bash",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "yaml",
      })

      -- Enable treesitter highlighting
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "elixir", "eex", "heex", "erlang", "bash", "lua", "markdown", "yaml" },
        callback = function()
          vim.treesitter.start()
        end,
      })

      -- Enable treesitter indentation
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "elixir", "eex", "heex", "erlang", "bash", "lua", "markdown", "yaml" },
        callback = function()
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}