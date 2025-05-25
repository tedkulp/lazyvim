return {
  "MeanderingProgrammer/markdown.nvim",
  cond = jit.os == "OSX" or jit.arch == "arm64",
  opts = {
    enabled = false,
  },
}
