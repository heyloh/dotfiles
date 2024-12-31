return {
	"mfussenegger/nvim-dap",
	keys = {
		{
			"<leader>dO",
			function()
				require("dap").step_out()
			end,
			desc = "Step out",
		},
		{
			"<leader>do",
			function()
				require("dap").step_over()
			end,
			desc = "Step over",
		},

		{
			"<leader>db",
			function()
				require("dap").toggle_breakpoint()
			end,
			desc = "Toggle breakpoint",
		},
	},
}
