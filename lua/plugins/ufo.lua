return {
  "kevinhwang91/nvim-ufo",
  dependencies = { "kevinhwang91/promise-async" },
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    vim.o.foldcolumn = "0" -- '0' is not bad
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    local handler = function(virtText, lnum, endLnum, width, truncate)
      local newVirtText = {}
      local suffix = (" 󰁂 %d "):format(endLnum - lnum)
      local sufWidth = vim.fn.strdisplaywidth(suffix)
      local targetWidth = width - sufWidth
      local curWidth = 0
      for _, chunk in ipairs(virtText) do
        local chunkText = chunk[1]
        local chunkWidth = vim.fn.strdisplaywidth(chunkText)
        if targetWidth > curWidth + chunkWidth then
          table.insert(newVirtText, chunk)
        else
          chunkText = truncate(chunkText, targetWidth - curWidth)
          local hlGroup = chunk[2]
          table.insert(newVirtText, { chunkText, hlGroup })
          chunkWidth = vim.fn.strdisplaywidth(chunkText)
          -- str width returned from truncate() may less than 2nd argument, need padding
          if curWidth + chunkWidth < targetWidth then
            suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
          end
          break
        end
        curWidth = curWidth + chunkWidth
      end
      table.insert(newVirtText, { suffix, "MoreMsg" })
      return newVirtText
    end

    ---@diagnostic disable-next-line: missing-fields
    require("ufo").setup({
      fold_virt_text_handler = handler,
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
      preview = {
        win_config = {
          border = { "", "─", "", "", "", "─", "", "" },
          winblend = 0,
          winhighlight = "Normal:UfoPreviewNormal,FloatBorder:UfoPreviewBorder,CursorLine:UfoPreviewCursorLine",
        },
        mappings = {
          scrollU = "<C-k>",
          scrollD = "<C-j>",
          jumpTop = "[",
          jumpBot = "]",
        },
      },
    })
  end,
  keys = {
    {
      "K",
      function()
        local winid = require("ufo").peekFoldedLinesUnderCursor()
        if winid then
        else
          vim.lsp.buf.hover()
        end
      end,
      mode = "n",
    },
    {
      "zV",
      function()
        require("ufo").peekFoldedLinesUnderCursor()
      end,
      mode = "n",
      desc = "Peek fold",
    },
    {
      "zR",
      function()
        require("ufo").openAllFolds()
      end,
      mode = "n",
      desc = "Open all folds",
    },
    {
      "zr",
      function()
        require("ufo").openFoldsExceptKinds()
      end,
      mode = "n",
      desc = "Open folds",
    },
    {
      "zM",
      function()
        require("ufo").closeAllFolds()
      end,
      mode = "n",
      desc = "Close all folds",
    },
    {
      "zm",
      function()
        require("ufo").closeFoldsWith()
      end,
      mode = "n",
      desc = "Close folds",
    },
  },
}
