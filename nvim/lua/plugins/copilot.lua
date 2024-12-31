return {
	{
		"github/copilot.vim",
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		keys = {
			{ "<leader>ai", "<cmd>CopilotChatToggle<cr>", desc = "Open copilot chat" },
		},
		opts = {},
	},
}