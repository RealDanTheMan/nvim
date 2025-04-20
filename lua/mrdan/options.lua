vim.opt.number = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.textwidth = 100
vim.opt.colorcolumn = "100"

vim.cmd("set clipboard+=unnamedplus")
vim.cmd("syntax on")
vim.cmd("set termguicolors")
vim.cmd("colorscheme rose-pine")
--vim.cmd("colorscheme kanagawa-dragon")
--require("colorbuddy").colorscheme("nvim-rdark")
--
-- Enable whitespace rendering
vim.api.nvim_set_hl(0, 'Whitespace', { fg = '#2A2A38' }) -- adjust to taste
vim.opt.list = true
vim.opt.listchars = {
  space = '·',
  tab = '→ ',
  trail = '·',
}
--
vim.env.TERM = "ghostty"
vim.cmd("let $TERM = 'ghostty'")
