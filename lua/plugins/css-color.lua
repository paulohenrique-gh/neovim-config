vim.opt.termguicolors = true

return {
	"brenoprata10/nvim-highlight-colors",
	config = function()
		require("nvim-highlight-colors").setup({
			enable_named_colors = true,
		})
	end,
}
