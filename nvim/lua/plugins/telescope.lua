return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sharkdp/fd",
			"nvim-treesitter/nvim-treesitter",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"BurntSushi/ripgrep",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")
			local layout_actions = require("telescope.actions.layout")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					file_ignore_patterns = {
						"**/node_modules/*",
						".DS_STORE",
						".DS_Store",
						".git",
					},
					border = false,
					sorting_strategy = "ascending",
					layout_config = {
						prompt_position = "top",
					},
					mappings = {
						i = {
							["<C-p>"] = layout_actions.toggle_preview,
							["<C-k>"] = actions.move_selection_previous,
							["<C-j>"] = actions.move_selection_next,
							["<C-d>"] = actions.delete_buffer + actions.move_to_top,
						},
					},
					preview = {
						hide_on_startup = true,
					},
				},
			})

			telescope.load_extension("fzf")

			vim.keymap.set("n", "<leader>ff", function()
				builtin.find_files({
					no_ignore = false,
					hidden = true,
				})
			end, { desc = "Search for files" })
			vim.keymap.set("n", "<leader>fg", function()
				builtin.live_grep({
					additional_args = { "--hidden" },
				})
			end, { desc = "Search for string on files" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Search for open files" })
			vim.keymap.set("n", "<leader>fi", builtin.current_buffer_fuzzy_find, { desc = "Search on current file" })
			vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Search for keymaps" })
		end,
	},
}
