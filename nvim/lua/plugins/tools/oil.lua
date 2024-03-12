--
local M = {
	"stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = true,
}

M.opts = {
    use_default_keymaps = false,
    keymaps = {
        ["-"] = "actions.parent",
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<C-c>"] = "actions.close",
        ["<leader>e"] = "actions.close",
        ["<C-r>"] = "actions.refresh",
        ["gs"] = "actions.change_sort",
        ["g."] = "actions.toggle_hidden",
    },
    default_file_explorer = true,
    view_options = {
        show_hidden = true,
    },
    columns = {
        "icon",
        "permissions",
      },
    float = {
        padding = 10,
      },
}

M.cmd = "Oil"

M.keys = {
    {
        "-",
        "<cmd>Oil --float<cr>",
        desc = "file explorer"
    },
    {
        "<leader>e",
        "<cmd>Oil --float<cr>",
        desc = "file explorer"
    },
    {
        "<leader>E",
        "<cmd>Oil --float .<cr>",
        desc = "file explorer (root dir)"
    },
}

return M
