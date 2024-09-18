vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.scrolloff = 8

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.termguicolors = true

vim.cmd("language en_US")
