local keymap = vim.keymap

keymap.set("n", "<C-s>", "<cmd>w<CR>")

keymap.set("v", "J", ":m'>+<CR>gv=gv")
keymap.set("v", "K", ":m-2<CR>gv=gv")

keymap.set("v", "<leader>y", '"+y')

-- keymap.set("n", "<C-h>", "<C-w>h")
-- keymap.set("n", "<C-j>", "<C-w>j")
-- keymap.set("n", "<C-k>", "<C-w>k")
-- keymap.set("n", "<C-l>", "<C-w>l")
