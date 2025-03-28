local vim = vim

vim.api.nvim_create_autocmd({"Bufread", "BufNewFile"}, {
	pattern = {
		"*.vs",
		"*.ps",
		"*.fs",
		"*.vertex",
		"*.fragment"
	},

	callback = function ()
		vim.bo.filetype = "glsl"
	end
})
