-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.minipairs_disable = true
vim.filetype.add({
  extension = {
    tfvars = "terraform",
    yml = "yaml",
  },
})
