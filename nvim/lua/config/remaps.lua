local keymap = vim.keymap
local cmd = vim.cmd

local opts = { noremap = true, silent = true }

keymap.set("n", "<C-s>", "<cmd>w<CR>")

keymap.set("v", "J", ":m'>+<CR>gv=gv")
keymap.set("v", "K", ":m-2<CR>gv=gv")

keymap.set("v", "<leader>y", '"+y')

keymap.set("n", "<S-Right>", "<cmd>vertical resize +5<CR>", opts)
keymap.set("n", "<S-Left>", "<cmd>vertical resize -5<CR>", opts)
keymap.set("n", "<S-Up>", "<cmd>resize +5<CR>", opts)
keymap.set("n", "<S-Down>", "<cmd>resize -5<CR>", opts)

keymap.set("n", "<leader>cb", "<cmd>w <bar> %bd <bar> e# <bar> bd# <CR>", opts)

keymap.set("i", "<C-c>", "<Esc>")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "<leader><leader>", function()
	cmd("so")
end)
