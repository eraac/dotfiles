return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.config('terraformls', {
            cmd = { 'terraform-ls', 'serve', '-log-file', '/dev/null' }, -- disable logging for terraform-ls (too much logs)
            filetypes = { 'terraform' },
            init_options = {
                experimentalFeatures = {
                    prefillRequiredFields = true,
                },
            }
        })

        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            underline = true,
        })
    end
}

-- Usage:
-- ':LspStart xxx' to start lsp servers

