-- generalized lsp, for things like rubopcop which isn't an LSP but with null_ls it acts like one (??)
-- stylua needs to be installed with :Mason
-- issue with eslint_d fixed according to stack overflow solution: https://stackoverflow.com/questions/78150730/failed-to-load-builtin-eslint-d-for-method-diagnostics
-- need to run npm init and npm init @eslint/config in project root
return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.erb_lint,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
