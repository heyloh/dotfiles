return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	config = function()
		local harpoon = require("harpoon")
		local conf = require("telescope.config").values

		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end

		local wk = require("which-key")
		wk.add({
			{
				"<leader>ha",
				function()
					harpoon:list():add()
				end,
				desc = "Add to harpoon list",
			},
			{
				"<leader>hl",
				function()
					toggle_telescope(harpoon:list())
					-- harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "Open harpoon list",
			},
			{
				"<leader>h1",
				function()
					harpoon:list():select(1)
				end,
				desc = "Go to buffer 1",
			},
			{
				"<leader>h2",
				function()
					harpoon:list():select(2)
				end,
				desc = "Go to buffer 2",
			},
			{
				"<leader>h3",
				function()
					harpoon:list():select(3)
				end,
				desc = "Go to buffer 4",
			},
			{
				"<leader>h4",
				function()
					harpoon:list():select(4)
				end,
				desc = "Go to buffer 4",
			},
			{
				"<leader>h5",
				function()
					harpoon:list():select(5)
				end,
				desc = "Go to buffer 5",
			},
		})
	end,
}
