return {
  "epwalsh/obsidian.nvim",
  cond = jit.os == "OSX" or jit.arch == "arm64",
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
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },

    daily_notes = {
      folder = "01 - Journal/Daily",
      date_format = "%Y-%m-%d",
      default_tags = { "daily" },
      template = "daily",
    },

    attachments = {
      img_folder = "05 - Attachments",
    },
  },

  keys = {
    { "<leader>o", desc = "Obsidian" },
    { "<leader>ot", "<cmd>ObsidianToday<cr>", mode = { "n", "v" }, desc = "Journal for Today" },
    { "<leader>oy", "<cmd>ObsidianYesterday<cr>", mode = { "n", "v" }, desc = "Journal for Yesterday" },
    { "<leader>oo", "<cmd>ObsidianQuickSwitch<cr>", mode = { "n", "v" }, desc = "Open Page" },
    { "<leader>o/", "<cmd>ObsidianSearch<cr>", mode = { "n", "v" }, desc = "Search Obsidian" },
  },
}
