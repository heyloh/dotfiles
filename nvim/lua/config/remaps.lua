local keymap = vim.keymap
local cmd = vim.cmd

local remap = function(mode, lhs, rhs, desc, silent)
	local opts = {
		desc = desc,
		noremap = true,
	}
	if silent == nil then
		opts.silent = true
	else
		opts.silent = silent
	end
	keymap.set(mode, lhs, rhs, opts)
end

remap("n", "<C-s>", "<cmd>w<CR>", "Write changes")
remap("v", "J", ":m'>+<CR>gv=gv", "Move selection down")
remap("v", "K", ":m-2<CR>gv=gv", "Move selection up")
remap("n", "<S-Right>", "<cmd>vertical resize +5<CR>")
remap("n", "<S-Left>", "<cmd>vertical resize -5<CR>")
remap("n", "<S-Up>", "<cmd>resize +5<CR>")
remap("n", "<S-Down>", "<cmd>resize -5<CR>")
remap("i", "<C-c>", "<Esc>", "Exit insert mode")
remap("n", "<C-d>", "<C-d>zz", "Scroll buffer down")
remap("n", "<C-u>", "<C-u>zz", "Scroll buffer up")

remap("n", "<leader><leader>", function()
	cmd("so")
end, "Reload config")

remap("v", "<leader>y", '"+y', "Yank to clipboard", true)
remap("n", "<leader>bc", "<cmd>w <bar> %bd <bar> e# <bar> bd# <CR>", "Close other buffers")

remap("n", "<C-L>", '<cmd>let @/ = ""<CR>', "Clear highlights")
