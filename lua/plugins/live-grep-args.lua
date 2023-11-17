return {
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-live-grep-args.nvim",
    -- This will not install any breaking changes.
    -- For major updates, this must be adjusted manually.
    version = "^1.0.0",
    config = function()
      require("telescope").load_extension("live_grep_args")
      require("telescope").setup({
        extensions = {
          live_grep_args = {
            auto_quoting = true,
          },
        },
      })
    end,
  },
  keys = {
    {
      "<leader>/",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      desc = "Grep (root dir)",
    },
    {
      "<leader>sg",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      desc = "Grep (root dir)",
    },
    {
      "<leader>sG",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args({ search_dirs = { "%:p" } })
      end,
      desc = "Grep (cwd)",
    },
  },
}
