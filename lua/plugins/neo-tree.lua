return {
  "nvim-neo-tree/neo-tree.nvim",
  optional = true,
  opts = {
    filesystem = {
      filtered_items = {
        visible = false,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".git",
          ".DS_Store",
          ".vscode",
          "thumbs.db",
        },
        never_show = {},
      },
    },
    window = {
      mappings = {
        ["L"] = "expand_all_nodes",
      },
    },
  },
}
