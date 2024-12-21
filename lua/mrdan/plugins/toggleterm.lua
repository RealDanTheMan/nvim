return {
	"akinsho/toggleterm.nvim",
	lazy = false,
	config = function()
		require("toggleterm").setup({
			size = 24,
			persist_size = true,
			hide_numbers = true,
			start_in_insert  = true,
			insert_mappings = true,
			auto_scroll = true,
			direction = "horizontal",
			open_mapping = "<leader>j"
		})

		vim.keymap.set("t", "<esc>", [[<C-\><<C-n>:ToggleTerm<CR>"]], {buffer=0})
	end,
}
