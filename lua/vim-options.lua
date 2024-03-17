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

vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<Leader>w', '<C-w>', { noremap = true })

