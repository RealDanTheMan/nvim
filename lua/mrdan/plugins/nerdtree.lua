return {
	"preservim/nerdtree",
	config = function()
		vim.g.NERDTreeWinSize = 24
		vim.g.NERDTreeShowHidden = true

		vim.keymap.set("n", "<leader>tt", ":NERDTreeToggle<CR>")
		vim.keymap.set("n", "<leader>tr", ":NERDTreeFind<CR>")
	end,
}
