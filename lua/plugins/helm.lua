return {
  { "towolf/vim-helm" },
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
