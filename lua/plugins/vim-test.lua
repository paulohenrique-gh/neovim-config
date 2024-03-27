return {
  "vim-test/vim-test",
  dependencies = {
    'preservim/vimux',
  },
  vim.keymap.set('n', '<leader>t', ':TestNearest<CR>'),
  vim.keymap.set('n', '<leader>T', ':TestFile<CR>'),
  vim.keymap.set('n', '<leader>a', ':TestSuite<CR>'),
  vim.keymap.set('n', '<leader>l', ':TestLast<CR>'),
  vim.keymap.set('n', '<leader>k', ':TestVisit<CR>'),
  vim.cmd("let test#strategy = 'vimux'")
}

-- https://github.com/vim-test/vim-test
-- https://github.com/preservim/vimux
