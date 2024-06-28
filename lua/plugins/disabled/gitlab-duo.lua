return {
  "git@gitlab.com:gitlab-org/editor-extensions/gitlab.vim.git",
  event = { "BufReadPre", "BufNewFile" }, -- Activate when a file is created/opened
  ft = { "lua", "go", "javascript", "python", "ruby", "typescript", "terraform" }, -- Activate when a supported filetype is open
  -- cond = function()
  --   return vim.env.GITLAB_TOKEN ~= nil and vim.env.GITLAB_TOKEN ~= "" -- Only activate is token is present in environment variable (remove to use interactive workflow)
  -- end,
  opts = {
    statusline = {
      enabled = true, -- Hook into the builtin statusline to indicate the status of the GitLab Duo Code Suggestions integration
    },
  },
}
