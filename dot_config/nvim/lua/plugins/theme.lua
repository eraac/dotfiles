return {
    -- set lazy: false for the theme you want (and true for the other)

    {
        'shaunsingh/nord.nvim',
        lazy = true,
        priority = 1000,
        config = function ()
            vim.g.nord_italic = false

            vim.cmd("colorscheme nord")
        end
    },

    {
        'marko-cerovac/material.nvim',
        lazy = false,
        priority = 1000,
        config = function ()
            vim.g.material_style = "oceanic" -- or darker, lighter oceanic, palenight, deep ocean

            vim.cmd('colorscheme material')
        end
    },

    {
        "neanias/everforest-nvim",
        version = false,
        lazy = true,
        priority = 1000, 
        config = function()
            vim.cmd('colorscheme everforest')
        end
    },

    {
        "vague-theme/vague.nvim",
        lazy = true,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme vague")
        end
    },
}

