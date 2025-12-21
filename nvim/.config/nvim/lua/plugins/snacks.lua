return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    explorer = { enabled = true },
    notifier = { enabled = true, timeout = 3000 },
  },
  keys = {
    { "<leader>e", function() Snacks.explorer() end, desc = "Explorer" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
  },
}
