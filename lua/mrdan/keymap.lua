local vim = vim

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", ":Ex<CR>")

vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>rf", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>rd", vim.lsp.buf.definition)
