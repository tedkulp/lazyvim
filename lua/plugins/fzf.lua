return {
  "ibhagwan/fzf-lua",
  cond = jit.os == "OSX" or jit.arch == "arm64",
  opts = function()
    local opts = {
      manpages = { previewer = "man_native" },
      helptags = { previewer = "help_native" },
      tags = { previewer = "bat" },
      btags = { previewer = "bat" },
      winopts = { preview = { default = "bat" } },
      grep = {
        rg_glob = true,
        -- first returned string is the new search query
        -- second returned string are (optional) additional rg flags
        -- @return string, string?
        rg_glob_fn = function(query, opts)
          local regex, flags = query:match("^(.-)%s%-%-(.*)$")
          -- If no separator is detected will return the original query
          return (regex or query), flags
        end,
      },
    }

    -- if os.getenv("TMUX") then
    --   opts.fzf_bin = "fzf-tmux"
    --   opts.fzf_opts = { ["--border"] = "rounded" }
    --   opts.fzf_tmux_opts = { ["-p"] = "80%,90%" }
    -- end

    return opts
  end,
}
