return {
  "ahmedkhalf/project.nvim",
  cond = jit.os == "OSX" or jit.arch == "arm64",
  opts = {
    manual_mode = false,
  },
}
