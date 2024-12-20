return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim"
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"pyright",
					"lua_ls",
				}
			})
			local lspconfig = require("lspconfig")
			lspconfig.pyright.setup({
				filetypes = {"python"},
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					python = {
						analysis = {
							autoSearchPaths = true,
							useLibraryCodeForTypes = true,
							typeCheckingMode = "standard",
						}
					}
				}
			})
		end,
	}
}
