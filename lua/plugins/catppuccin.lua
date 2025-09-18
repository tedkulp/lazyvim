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
          blink_cmp = true,
          cmp = false,
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
          mini = {
            enabled = true,
          },
          neotree = {
            enabled = true,
            show_root = true,
          },
          notify = true,
          render_markdown = true,
          snacks = true,
          treesitter = true,
          which_key = true,
        },
      })
    end,
    opts = function(_, opts)
      local module = require("catppuccin.groups.integrations.bufferline")
      if module then
        module.get = module.get_theme
      end
      return opts
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
