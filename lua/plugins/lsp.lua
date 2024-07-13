return {
  "neovim/nvim-lspconfig",
  opts = function()
    local Keys = require("lazyvim.plugins.lsp.keymaps").get()
    for i = 1, #Keys do
      if Keys[i] ~= nil and Keys[i][1] == "gr" then
        table.remove(Keys, i)
      end
    end
  end,
  keys = {
    {
      "gR",
      "<cmd>FzfLua lsp_references      jump_to_single_result=true ignore_current_line=true<cr>",
      desc = "References",
      nowait = true,
    },
  },
}
