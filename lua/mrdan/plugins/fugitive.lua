return {
	"tpope/vim-fugitive",
	lazy = false,
	config = function()
		vim.keymap.set("n", "<leader>gs", ":Git<CR>")
		vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
		vim.keymap.set("n", "<leader>gc", ":Git commit<CR>")
		vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>")
		vim.keymap.set("n", "<leader>gl", ":Git log<CR>")
	end,
}
