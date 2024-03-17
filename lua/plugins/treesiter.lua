-- auto_install will automatically install parser for languages that treesitter hasn't met yet
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- run TSInstall <language-name> to install parser for that language
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
