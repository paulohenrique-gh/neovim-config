-- Set line numbers
vim.cmd("set number")

-- Replace Tab key with spaces
vim.cmd("set expandtab")

-- Set the width of a tab character to 2 spaces
vim.cmd("set tabstop=2")

-- Set the number of spaces inserted when pressing Tab or Backspace to 2 spaces
vim.cmd("set softtabstop=2")

-- Set the width of indentation to 2 spaces when using the >> or << commands
vim.cmd("set shiftwidth=2")

-- Hide mode in buffer
vim.opt.showmode = false

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<Leader>w', '<C-w>', { noremap = true })

vim.opt.swapfile = false
