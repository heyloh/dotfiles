return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500

		local wk = require("which-key")
		wk.add({
			{ "<leader>c", group = "Code" },
			{ "<leader>b", group = "Buffers" },
			{ "<leader>e", group = "Explorer", icon = "" },
			{ "<leader>f", group = "Finder", icon = "" },
			{ "<leader>d", group = "Debug", icon = "" },
			{ "<leader>t", group = "Twilight", icon = "" },
			{ "<leader>h", group = "Harpoon", icon = "󰓾" },
			{ "<leader>u", group = "Undotree", icon = "" },
			{ "<leader>t", group = "Test", icon = "󰙨" },
			{ "<leader><leader>", group = "Reload config", icon = "󰑓" },
			{ "<leader>l", group = "Lazy", icon = "󰒲" },
			{ "<leader>a", group = "AI", icon = "󰚩" },
		})
	end,
	opts = {
		preset = "helix",
	},
}
