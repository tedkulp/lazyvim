return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    -- Set description for replace w/ register
    opts.defaults["gr"] = { name = "Replace w/o yank" }
  end,
}
