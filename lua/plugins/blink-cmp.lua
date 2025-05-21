return {
  "saghen/blink.cmp",
  enabled = true,
  opts = {
    completion = {
      menu = { border = "single" },
      documentation = { window = { border = "single" } },
      trigger = { prefetch_on_insert = false },
    },
    signature = { window = { border = "single" } },
    sources = {
      providers = {
        lsp = {
          score_offset = 100,
          -- max_items = 6,
          min_keyword_length = 0,
        },
        path = {
          score_offset = 100,
          min_keyword_length = 3,
          max_items = 3,
        },
        snippets = {
          score_offset = 105,
          min_keyword_length = 2,
        },
        buffer = {
          score_offset = 90,
          max_items = 3,
          min_keyword_length = 2,
        },
        minuet = {
          name = "minuet",
          module = "minuet.blink",
          score_offset = 110,
        },
        -- codeium = {
        --   score_offset = 95,
        --   max_items = 3,
        --   min_keyword_length = 0,
        -- },
      },
    },
    keymap = {
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },

      ["<C-l>"] = { "select_and_accept" },
      ["<Right>"] = { "select_and_accept" },

      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },

      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },

      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
    },
  },
}
