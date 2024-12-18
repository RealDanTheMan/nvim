return {
	"nvim-telescope/telescope.nvim",
	lazy = false,
	dependencies = {"nvim-lua/plenary.nvim"},
	keys = {
		{"<leader>ff", ":Telescope find_files<CR>"},
		{"<leader>fg", ":Telescope live_grep<CR>"},
	}
}
