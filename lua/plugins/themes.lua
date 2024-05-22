-- instead of having every plugin in one table in plugins.lua, create separate files in ~/.config/nvim/lua/plugins/<plugin name>.lua
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = false,
      })
      -- vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- require("nordic").load()
      -- vim.cmd.colorscheme("nordic")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        theme = "dragon",
      })
      vim.opt.termguicolors = true, 
      vim.cmd.colorscheme("kanagawa")
    end,
  },
  {
    "savq/melange-nvim",
    config = function()
      -- vim.opt.termguicolors = true,
      -- vim.cmd.colorscheme("melange")
    end,
  },
}
