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
    keys[#keys + 2] = {
      "<leader>bx",
      function()
        local buffers = vim.api.nvim_list_bufs()
        for _, buf in ipairs(buffers) do
          if vim.api.nvim_buf_is_valid(buf) then
            local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
            if #lines == 1 and #lines[1] == 0 then
              -- Buffer is empty, delete it
              vim.api.nvim_buf_delete(buf, { force = true })
            end
          end
        end
      end,
      desc = "Delete empty buffers (tmp)",
      noremap = true,
      silent = true,
    }
  end,
}
