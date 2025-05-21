-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here

-- local Util = require("lazyvim.util")
local keymap = vim.keymap.set
-- local opts = { silent = true }

-- Blatently stolen from emacs
-- keymap("n", "<A-x>", "<cmd>Telescope commands<cr>", opts)

-- -- Must have a border on my terminal
-- vim.keymap.set("n", "<C-/>", function()
--   Util.terminal(nil, { border = "rounded" })
-- end, { desc = "Term with border" })
-- vim.keymap.set("n", "<C-_>", function()
--   Util.terminal(nil, { border = "rounded" })
-- end, { desc = "Term with border" })

if vim.g.vscode then
  local vscode = require("vscode")

  keymap("n", "<leader>gg", function()
    vscode.action("lazygit-vscode.toggle")
  end, { desc = "Lazygit Toggle", silent = true })

  keymap("n", "<c-/>", function()
    vscode.action("workbench.action.terminal.toggleTerminal")
  end, { desc = "Terminal", silent = true })

  keymap("n", "<leader>bd", function()
    vscode.action("workbench.action.closeActiveEditor")
  end, { desc = "Close Buffer", silent = true })

  keymap("n", "<leader>bo", function()
    vscode.action("workbench.action.closeOtherEditors")
  end, { desc = "Close Other Buffers", silent = true })

  keymap("n", "<leader>e", function()
    vscode.action("workbench.view.explorer")
  end, { desc = "Close Other Buffers", silent = true })
end
