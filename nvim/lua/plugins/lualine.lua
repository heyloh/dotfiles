return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- makes lualine transparent
			local auto = require("lualine.themes.auto")
			local lualine_modes = { "insert", "normal", "visual", "command", "replace", "inactive", "terminal" }
			for _, field in ipairs(lualine_modes) do
				if auto[field] and auto[field].c then
					auto[field].c.bg = "NONE"
				end
			end
			require("lualine").setup({
				options = {
					disabled_filetypes = { "NvimTree" },
					theme = auto,
					-- section_separators = { left = "", right = "" },
					-- component_separators = { left = "", right = "" },
					-- component_separators = { left = "", right = "" },
					-- section_separators = { left = "", right = "" },
					section_separators = "",
					component_separators = "",
				},
			})
		end,
	},
}
