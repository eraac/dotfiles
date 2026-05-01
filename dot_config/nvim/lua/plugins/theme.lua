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
        lazy = true,
        priority = 1000,
        config = function ()
            -- vim.g.material_style = "oceanic" -- or darker, lighter, oceanic, palenight, deep ocean

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

    {
        'sainnhe/sonokai',
        lazy = true,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.sonokai_enable_italic = false
            vim.g.sonokai_style = "atlantis" -- 'default', 'atlantis', 'andromeda', 'shusia', 'maia', 'espresso'
            vim.cmd.colorscheme('sonokai')
        end
    },

    {
        "navarasu/onedark.nvim",
        lazy = true,
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require('onedark').setup {
                style = 'warm' -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
            }

            require('onedark').load()
        end
    },

    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require('cyberdream').setup({
                variant = "auto", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`

                transparent = false,
                italic_comments = true,
            })

            vim.cmd.colorscheme('cyberdream')
        end
    },
}

