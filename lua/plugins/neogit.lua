return {
  "NeogitOrg/neogit",
  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- "nvim-telescope/telescope.nvim",
    "sindrets/diffview.nvim",
    "ibhagwan/fzf-lua",
  },
  init = function()
    require("neogit").setup({
      integrations = {
        fzf_lua = true,
      },
    })
  end,
  keys = {
    { "<leader>gn", "<cmd>lua require('neogit').open({ kind='split' })<cr>", desc = "Neogit Status" },
  },
}
