return {
  "tpope/vim-abolish",
  init = function()
    -- Disable coercion mappings. I use mini.surround (gz{a,r,d})
    vim.g.abolish_no_mappings = true
  end,
}
