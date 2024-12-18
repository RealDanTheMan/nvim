return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {"lua", "python", "json", "xml", "go", "rust", "javascript"},
			highlight = {enabled = true},
			indent = {enabled = true},
			auto_install = true,
		})
	end,
}
