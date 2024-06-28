return {
  "ibhagwan/fzf-lua",
  opts = function()
    local opts = {
      manpages = { previewer = "man_native" },
      helptags = { previewer = "help_native" },
      tags = { previewer = "bat" },
      btags = { previewer = "bat" },
      winopts = { preview = { default = "bat" } },
    }

    if os.getenv("TMUX") then
      opts.fzf_bin = "fzf-tmux"
      opts.fzf_opts = { ["--border"] = "rounded" }
      opts.fzf_tmux_opts = { ["-p"] = "80%,90%" }
    end

    return opts
  end,
}
