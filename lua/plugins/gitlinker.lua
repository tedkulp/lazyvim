return {
  "linrongbin16/gitlinker.nvim",
  cmd = "GitLink",
  opts = {},
  keys = {
    { "<leader>goo", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open git link" },
    { "<leader>gob", "<cmd>GitLink! blame<cr>", mode = { "n", "v" }, desc = "Open git blame" },
  },
}
