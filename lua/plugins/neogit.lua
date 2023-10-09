return {
  "NeogitOrg/neogit",
  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "sindrets/diffview.nvim",
    "ibhagwan/fzf-lua",
  },
  init = function()
    require("neogit").setup({
      integrations = {
        telescope = true,
      },
    })

    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    keys[#keys + 1] = { "<leader>gn", "<cmd>lua require('neogit').open({ kind='split' })<cr>", desc = "Neogit Status" }
  end,
}
