return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})

    -- live_grep needs fd and ripgrep installed
    -- https://github.com/sharkdp/fd?tab=readme-ov-file#installation
    -- https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  end
}
