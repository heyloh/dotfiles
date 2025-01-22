return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"theHamsta/nvim-dap-virtual-text",
		"nvim-neotest/nvim-nio",
		"williamboman/mason.nvim",
	},
	config = function()
		local wk = require("which-key")
		local dap = require("dap")
		local ui = require("dapui")

		for _, adapter in ipairs({ "pwa-node", "node" }) do
			dap.adapters[adapter] = {
				type = "server",
				host = "localhost",
				port = "${port}",
				executable = {
					command = "node",
					args = {
						os.getenv("HOME") .. "/debug-adapters/vscode-js-debug-1.96.0/out/src/dapDebugServer.js",
						"${port}",
					},
				},
			}
		end

		for _, language in ipairs({ "typescript", "javascript" }) do
			require("dap").configurations[language] = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Default: Launch file",
					program = "${file}",
					cwd = "${workspaceFolder}",
					port = 3000,
				},
				{
					type = "pwa-node",
					request = "attach",
					name = "Default: Attach",
					processId = require("dap.utils").pick_process,
					cwd = "${workspaceFolder}",
					port = 3000,
				},
			}
		end

		ui.setup()

		dap.listeners.before.attach.dapui_config = function()
			ui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			ui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			ui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			ui.close()
		end

		local vscode = require("dap.ext.vscode")
		local json = require("plenary.json")
		vscode.json_decode = function(str)
			return vim.json.decode(json.json_strip_comments(str, {}))
		end

		vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "red", linehl = "", numhl = "" })
		vim.fn.sign_define("DapBreakpointCondition", { text = "", texthl = "orange", linehl = "", numhl = "" })
		vim.fn.sign_define("DapStopped", { text = "", texthl = "grey0", linehl = "", numhl = "" })
		vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "yellow", linehl = "", numhl = "" })

		wk.add({
			{
				"<leader>du",
				ui.toggle,
				desc = "UI",
			},
			{
				"<leader>dt",
				dap.terminate,
				desc = "Terminate",
				icon = "",
			},
			{
				"<leader>db",
				dap.step_back,
				desc = "Step back",
				icon = "",
			},
			{
				"<leader>dr",
				dap.restart,
				desc = "Restart",
				icon = "",
			},
			{
				"<leader>dc",
				dap.continue,
				desc = "Continue",
				icon = "",
			},
			{
				"<leader>dO",
				dap.step_out,
				desc = "Step out",
				icon = "",
			},
			{
				"<leader>do",
				dap.step_over,
				desc = "Step over",
				icon = "",
			},
			{
				"<leader>di",
				dap.step_into,
				desc = "Step into",
				icon = "",
			},
			{
				"<leader>dd",
				dap.toggle_breakpoint,
				desc = "Toggle breakpoint",
				icon = "",
			},
			{
				"<leader>dl",
				"<cmd>DapShowLog<cr>",
				desc = "Toggle breakpoint",
				icon = "",
			},
		})
	end,
}
