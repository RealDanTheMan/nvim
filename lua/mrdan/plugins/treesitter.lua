return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"python",
				"json",
				"xml",
				"go",
				"rust",
				"javascript",
				"c",
				"cpp",
				"c_sharp",
				"vim",
				"vimdoc",
				"css",
				"rust",
				"glsl",
			},
			highlight = {
				enabled = true,
				additional_vim_regex_highlighting = false
			},
			indent = {enabled = true},
			auto_install = true,
			sync_install = true,

		})
	end,
}
