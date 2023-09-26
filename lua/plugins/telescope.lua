return {
  "nvim-telescope/telescope.nvim",
  keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      mappings = {
        i = {
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
          ["<C-n>"] = require("telescope.actions").cycle_history_next,
          ["<C-p>"] = require("telescope.actions").cycle_history_prev,
          ["<C-q>"] = require("telescope.actions").smart_send_to_qflist + require("telescope.actions").open_qflist,
        },
        n = {
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
          ["<C-q>"] = require("telescope.actions").smart_send_to_qflist + require("telescope.actions").open_qflist,
        },
      },
    },
  },
}
