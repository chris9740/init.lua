local lsp = require('lsp-zero')
local nvim_lsp = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.html.setup {
    capabilities = capabilities,
}

nvim_lsp.cssls.setup {
    capabilities = capabilities,
}

nvim_lsp.tsserver.setup{}
nvim_lsp.bashls.setup{}

lsp.preset('recommended')

lsp.ensure_installed({
    'rust_analyzer',
})

lsp.on_attach(function(client, bufnr)
    vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.configure('rust_analyzer', {
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true
            }
        }
    }
})

lsp.setup()
