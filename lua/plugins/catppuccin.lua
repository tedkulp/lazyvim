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
          fzf_lua = true,
          harpoon = true,
          indent_blankline = {
            enbled = true,
            colored_indent_levels = true,
          },
          lualine = true,
          leap = true,
          markdown = true,
          mason = true,
          neogit = true,
          neotree = {
            enabled = true,
            show_root = true,
          },
          notify = true,
          render_markdown = true,
          snacks = true,
          -- telescope = {
          --   enabled = true,
          -- },
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
}
