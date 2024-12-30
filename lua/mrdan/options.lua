vim.opt.number = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.textwidth = 100
vim.opt.colorcolumn = "100"

vim.cmd("set clipboard+=unnamedplus")
vim.cmd("syntax on")
vim.cmd("set termguicolors")
vim.cmd("colorscheme pinkmare")
--require("colorbuddy").colorscheme("nvim-rdark")
--
--
vim.env.TERM = "ghostty"
vim.cmd("let $TERM = 'ghostty'")
