-- instead of having every plugin in one table in plugins.lua, create separate files in ~/.config/nvim/lua/plugins/<plugin name>.lua
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end
}
