-- File explorer

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<C-t>", ":NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
    },
    config = function()
        local function my_on_attach(bufnr)
            local api = require("nvim-tree.api")

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- automatically close nvim-tree when is the last window
            vim.api.nvim_create_autocmd("BufEnter", {
                nested = true,
                callback = function()
                    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
                        vim.cmd "quit"
                    end
                end
            })

            -- default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- REMOVE the internal Ctrl-t so it doesn't change root dir
            vim.keymap.del('n', '<C-t>', { buffer = bufnr })
            vim.keymap.del('n', '<Tab>', { buffer = bufnr })

            -- custom mappings
            vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
        end

        require("nvim-tree").setup({
            on_attach = my_on_attach,
        })
    end,
}

-- Shortcut
-- '?' to display commands
-- '<C-t>' Toggle nvim-tree
-- '<C-v>' Open: Vertical Split
-- '<C-x>' Open: Horizontal Split
-- 'H' Toggle Filter: Dotfiles
-- 'q' Close nvim-tree

