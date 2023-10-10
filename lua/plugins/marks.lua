return {
  "chentoast/marks.nvim",
  config = function()
    require("marks").setup({
      default_mappings = true,
      mappings = {
        set = false,
        set_next = false,
        toggle = false,
        next = false,
        prev = false,
        delete_line = false,
        delete_buffer = false,
      },
    })
  end,
  keys = {
    { "`", "<cmd>Telescope marks<cr>", desc = "Open Marks" },
    { "m,", "<cmd>lua require('marks').set_next()<cr>", desc = "Set Next Mark" },
    { "m;", "<cmd>lua require('marks').toggle()<cr>", desc = "Toogle Mark" },
    { "m]", "<cmd>lua require('marks').next()<cr>", desc = "Goto Next Mark" },
    { "m[", "<cmd>lua require('marks').prev()<cr>", desc = "Goto Previous Mark" },
    { "dm", nil, desc = "Marks" },
    { "dm-", "<cmd>lua require('marks').delete_line()<cr>", desc = "Delete Marks on Line" },
    { "dm<space>", "<cmd>lua require('marks').delete_buf()<cr>", desc = "Delete Marks in Buffer" },
  },
}
