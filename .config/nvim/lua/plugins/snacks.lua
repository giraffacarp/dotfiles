--
local M = {
  "folke/snacks.nvim",
}

M.opts = function(_, opts)
  opts.explorer = { enabled = false }
  opts.picker = opts.picker or {}
  opts.picker.sources = {
    files = {
      hidden = true,
      ignored = false, -- respect .gitignore
      exclude = { "node_modules", ".git", ".venv", ".ruff_cache", "__pycache__", "*.pyc", "*.pth" },
    },
  }
end

-- disable snacks file explorer
M.keys = {
  { "<leader>fe", false },
  { "<leader>fE", false },
  { "<leader>e", false },
  { "<leader>E", false },
}

return M
