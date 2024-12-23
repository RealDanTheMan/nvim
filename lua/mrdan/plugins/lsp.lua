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
					"pylsp",
					"lua_ls",
				}
			})
			local lspconfig = require("lspconfig")
			--lspconfig.pyright.setup({
			--	filetypes = {"python"},
			--	capabilities = capabilities,
			--	on_attach = on_attach,
			--	settings = {
			--		python = {
			--			analysis = {
			--				autoSearchPaths = true,
			--				useLibraryCodeForTypes = true,
			--				typeCheckingMode = "standard",
			--			}
			--		}
			--	}
			--}),
			lspconfig.pylsp.setup({
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
