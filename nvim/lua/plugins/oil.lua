return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		view_options = {
			is_hidden_file = function(name, bufnr)
				print(bufnr)
				if vim.startswith(name, ".env") or vim.startswith(name, ".gitignore") then
					return false
				else
					local m = name:match("^%.")
					return m ~= nil
				end
			end,
		},
	},
	keys = {
		{ "<leader>ee", "<cmd>Oil<cr>", desc = "Open parent directory", mode = "n" },
		{ "<C-p>", "actions.preview" },
		{ "<C-c>", "actions.close" },
		{ "<C-r>", "actions.refresh" },
	},
}
