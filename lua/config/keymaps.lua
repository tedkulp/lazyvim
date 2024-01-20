-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local keymap = vim.keymap.set
local opts = { silent = true }

-- Blatently stolen from emacs
keymap("n", "<A-x>", "<cmd>Telescope commands<cr>", opts)

-- Must have a border on my terminal
vim.keymap.set("n", "<C-/>", function()
  Util.terminal(nil, { border = "rounded" })
end, { desc = "Term with border" })
vim.keymap.set("n", "<C-_>", function()
  Util.terminal(nil, { border = "rounded" })
end, { desc = "Term with border" })
