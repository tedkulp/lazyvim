return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  name = "lsp_lines",
  event = "LspAttach",
  config = function()
    require("lsp_lines").setup()

    vim.diagnostic.config({ virtual_text = false, virtual_lines = true })
  end,
  keys = {
    {
      "<leader>uD",
      function()
        ---@diagnostic disable-next-line: undefined-field
        local flag = not vim.diagnostic.config().virtual_lines
        vim.diagnostic.config({ virtual_lines = flag, virtual_text = not flag })
      end,
      desc = "Toggle Diagnostics below code",
    },
  },
}
