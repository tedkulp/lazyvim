return {
  {
    "catppuccin/nvim",
    priority = 1000,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        dim_inactive = {
          enabled = true,
        },
        integration = {
          aerial = true,
          bufferline = true,
          indent_blankline = {
            enbled = true,
            colored_indent_levels = true,
          },
          lualine = true,
          leap = true,
          mason = true,
          neogit = true,
          neotree = {
            enabled = true,
            show_root = true,
          },
          notify = true,
          telescope = {
            enabled = true,
          },
          treesitter = true,
          which_key = true,
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "akinsho/bufferline.nvim",
    after = "catppuccin",
    config = function()
      require("bufferline").setup({
        highlights = require("catppuccin.groups.integrations.bufferline").get(),
      })
    end,
  },
}
