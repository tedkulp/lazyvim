return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    -- Move gr to gR (to get out of the way of replace w/ register)
    keys[#keys + 1] = { "gr", false }
    keys[#keys + 1] = { "gR", "<cmd>Telescope lsp_references<cr>", desc = "References" }
  end,
  opts = {
    setup = {
      rust_analyzer = function()
        return true
      end,
    },
  },
}
