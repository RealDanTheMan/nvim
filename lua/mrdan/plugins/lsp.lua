return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"saghen/blink.cmp"
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"pylsp",
					"lua_ls",
				},
				auto_update = true,
				install_package_manager = "pacman"
			})

			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.pylsp.setup({
				capabilities = capabilities,
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {
								enabled = true, 
								maxLineLength = 100,
							},
							pylint = {
								enabled = true,
								args = {
									"--function-naming-style=camelCase",
									"--method-naming-style=camelCase",
									"--max-attributes=10"
								}
							},
							black = {enabled = true},
							autopep8 = {enabled = false},
							flake8 = {enabled = false},

						}
					}
				}
			})
		end,
	}
}
