-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

-- Show on the left, the line number of the current file
vim.opt.number = true

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Calculates the indentation of the original line and applies that same indentation to the wrapped parts.
vim.opt.breakindent = true

-- A tab looks like 4 spaces
vim.opt.tabstop = 4

-- '>>' indents by 4 spaces
vim.opt.shiftwidth = 4

-- Set the fold level to a high number so everything is open by default
vim.opt.foldlevel = 99

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Always display the extra column next the line number
vim.opt.signcolumn = 'yes'

-- Configure how new splits should be opened
vim.opt.splitright = true -- vsplit -> right
vim.opt.splitbelow = true -- split -> below

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true -- show spaces at the end of the line
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '☠', eol = '¬' }

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true

vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = "Clear highlights on search when pressing <Esc>" }) -- or the command ':noh'
vim.keymap.set('n', '<Tab>', '<C-W>w', { desc = 'Move to next window with Tab' })
vim.keymap.set('n', '<S-Tab>', '<C-w>W', { desc = 'Move to previous window with Tab' })

