-- dap doesn't have an ui so it needs another plugin called nvim-dap-ui
-- https://github.com/rcarriga/nvim-dap-ui
-- needs to setup debugger for each language
return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"suketa/nvim-dap-ruby",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local dap_ruby = require("dap-ruby")

		dapui.setup()
		dap_ruby.setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<Leader>dc", dap.continue, {})
	end,
}
