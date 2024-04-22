return {
  { "towolf/vim-helm", ft = "helm" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        disable = {
          "helm",
        },
      },
      select = {
        disable = {
          "helm",
        },
      },
      highlight = {
        disable = {
          "helm",
        },
      },
    },
  },
}
