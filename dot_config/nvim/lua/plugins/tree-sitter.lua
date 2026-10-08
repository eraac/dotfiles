return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
        -- :TSInstall <parser>
        ensure_installed = {
            "hcl",
            "terraform",
            "yaml",
            "ini",
        },
    },
    config = function()
        -- use tree-sitter to detect fold
        -- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo[0][0].foldmethod = 'indent'
    end
}

-- Usage fold
-- zo: Open one fold under the cursor
-- zO: Open all folds under the cursor
-- zc: Close one fold under the cursor
-- zC: Close all folds under the cursor
-- za: Toggle the fold under the cursor
-- zA: Toggle all the fold under the cursor

