vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.scrolloff = 8

opt.number = true
opt.relativenumber = true
opt.numberwidth = 6

opt.wrap = false
opt.signcolumn = "yes"
opt.colorcolumn = "100"

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.termguicolors = true

opt.fillchars = "eob: "

opt.background = "dark"

vim.cmd("language en_US")
