--
M = {}

M.format = {
    ['ruff_lsp'] = {'python'},
}

M.servers = {
    'ruff_lsp',
    'pyright'
}

M.handlers = {
    ruff_lsp = function()
        require('lspconfig').ruff_lsp.setup({
            on_attach = function(client, bufnr)
                client.server_capabilities.hoverProvider = false
            end
        })
    end,
}

return M
