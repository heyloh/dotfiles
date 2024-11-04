return {
	{
		"oxfist/night-owl.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local night_owl = require("night-owl")
			--@param options Config|nil
			night_owl.setup({
				transparent_background = true,
			})
			vim.cmd.colorscheme("night-owl")
		end,
	},
	-- {
	-- 	"scottmckendry/cyberdream.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("cyberdream").setup({
	-- 			transparent = true,
	-- 			italic_comments = true,
	-- 			hide_fillchars = true,
	-- 			borderless_telescope = true,
	-- 			cache = false,
	-- 		})
	-- 		vim.cmd("colorscheme cyberdream")
	-- 	end,
	-- },
	-- {
	-- 	"sainnhe/everforest",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.everforest_background = "dark"
	-- 		vim.g.everforest_enable_italic = true
	-- 		vim.g.everforest_transparent_background = 2
	-- 		vim.cmd.colorscheme("everforest")
	-- 	end,
	-- },
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			styles = {
	-- 				transparency = true,
	-- 			},
	-- 		})
	-- 		vim.cmd("colorscheme rose-pine")
	-- 	end,
	-- },
	-- {
	-- 	"olimorris/onedarkpro.nvim",
	-- 	config = function()
	-- 		require("onedarkpro").setup({
	-- 			-- styles = {
	-- 			-- 	types = "NONE",
	-- 			-- 	methods = "NONE",
	-- 			-- 	numbers = "NONE",
	-- 			-- 	strings = "NONE",
	-- 			-- 	comments = "italic",
	-- 			-- 	keywords = "bold,italic",
	-- 			-- 	constants = "NONE",
	-- 			-- 	functions = "italic",
	-- 			-- 	operators = "NONE",
	-- 			-- 	variables = "NONE",
	-- 			-- 	parameters = "NONE",
	-- 			-- 	conditionals = "italic",
	-- 			-- 	virtual_text = "NONE",
	-- 			-- },
	-- 			options = {
	-- 				transparency = true,
	-- 				lualine_transparency = true,
	-- 			},
	-- 		})
	-- 		-- vim.cmd("colorscheme onedark_dark")
	-- 	end,
	-- },
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "mocha",
	-- 			transparent_background = true,
	-- 			show_end_of_buffer = false,
	-- 			integrations = {
	-- 				mason = true,
	-- 				nvim_surround = true,
	-- 				which_key = true,
	-- 			},
	-- 		})
	--
	-- 		vim.cmd("colorscheme catppuccin")
	-- 	end,
	-- },
}
