return {
  "mg979/vim-visual-multi",
  init = function()
    vim.cmd([[
      let g:VM_theme = 'neon'

      let g:VM_maps = {}
      let g:VM_maps["Select Cursor Down"] = '<M-S-Down>'
      let g:VM_maps["Select Cursor Up"]   = '<M-S-Up>'
      let g:VM_maps["Erase Regions"]      = '\\gr'
      let g:VM_maps["Mouse Cursor"]       = '<C-LeftMouse>'
      let g:VM_maps["Mouse Word"]         = '<C-RightMouse>'
      let g:VM_maps["Mouse Column"]       = '<M-C-RightMouse>'
    ]])
  end,
}
