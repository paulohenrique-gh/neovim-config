return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})

			-- live_grep needs fd and ripgrep installed
			-- https://github.com/sharkdp/fd?tab=readme-ov-file#installation
			-- https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fs", ":Telescope persisted<CR>", {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- more opts
						}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("persisted")
		end,
	},
}
