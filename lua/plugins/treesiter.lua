return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- run TSInstall <language-name> to install parser for that language
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensured_installed = { "c", "help", "cmake", "lua", "vim", "vimdoc", "query", "ruby", "elixir", "html", "css" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
