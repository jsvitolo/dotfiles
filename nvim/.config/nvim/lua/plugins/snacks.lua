return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    explorer = {
      enabled = true,
      hidden = true,
      ignored = true,
    },
    notifier = { enabled = true, timeout = 3000 },
    picker = {
      enabled = true,
      sources = {
        files = { hidden = true, ignored = true },
        explorer = { hidden = true, ignored = true },
      },
    },
  },
  keys = {
    -- Explorer
    { "<leader>e", function() Snacks.explorer() end, desc = "Explorer" },
    {
      "<leader>o",
      function()
        local explorer = Snacks.picker.get({ source = "explorer" })[1]
        if explorer then
          explorer:focus("list")
        else
          Snacks.explorer()
        end
      end,
      desc = "Focus Explorer",
    },

    -- Git
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
    { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
    { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },

    -- Find
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent Files" },
    { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Git Files" },
    { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find" },

    -- Search
    { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Grep Word", mode = { "n", "x" } },
    { "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
    { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "Document Symbols" },

    -- Buffers
    { "<leader>bb", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },

    -- Help
    { "<leader>sh", function() Snacks.picker.help() end, desc = "Help" },
    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
  },
}
