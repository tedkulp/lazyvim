return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  -- lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre "
  --     .. vim.fn.expand("~")
  --     .. "/vaults/main/**/*.md",
  --   "BufNewFile " .. vim.fn.expand("~") .. "/vaults/main/**/*.md",
  -- },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "main",
        path = "~/vaults/main",
      },
    },

    templates = {
      folder = "_templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },

    daily_notes = {
      folder = "journals",
      date_format = "%Y-%m-%d",
      default_tags = { "daily" },
      template = nil,
    },

    attachments = {
      img_folder = "_assets",
    },
  },

  keys = {
    { "<leader>ot", "<cmd>ObsidianToday<cr>", mode = { "n", "v" }, desc = "Journal for Today" },
    { "<leader>oy", "<cmd>ObsidianYesterday<cr>", mode = { "n", "v" }, desc = "Journal for Yesterday" },
    { "<leader>oo", "<cmd>ObsidianQuickSwitch<cr>", mode = { "n", "v" }, desc = "Open Page" },
    { "<leader>o/", "<cmd>ObsidianSearch<cr>", mode = { "n", "v" }, desc = "Search Obsidian" },
  },
}
