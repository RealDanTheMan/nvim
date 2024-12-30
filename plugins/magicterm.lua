local vim = vim

local magic = {
	ctx = {
		win = -1,
		buff = -1,
		hidden = true,
	}
}

local function create_magic_term(opts)
	opts = otps or {}

	local width = opts.width or math.floor(vim.o.columns * 0.66)
	local height = opts.height or math.floor(vim.o.lines * 0.66)
	local col = math.floor((vim.o.columns - width) / 2)
	local row = math.floor((vim.o.lines - height) / 2)

	local buff = vim.api.nvim_create_buf(false, true)
	local win_conf = {
		relative = "editor",
		width = width,
		height = height,
		col = col,
		row = row,
		style = "minimal",
		border = "rounded"
	}

	local win = vim.api.nvim_open_win(buff, true, win_conf)
	return {win = win, buff=buff}
end

vim.api.nvim_create_user_command("MagicTerm", function ()
	if not vim.api.nvim_win_is_valid(magic.ctx.win) then
		magic.ctx = create_magic_term()
		magic.ctx.hidden = false
	else
		if magic.ctx.hidden then
			vim.api.nvim_win_show(magic.ctx.win)
			magic.ctx.hidden = false
		else
			vim.api.nvim_win_hide(magic.ctx.win)
			magic.ctx.hidden = true
		end
	end
end, {})
