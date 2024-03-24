-- list of themes: https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require('lualine').setup({
      options = {
        theme = 'nordic'
      }
    })
  end
}
