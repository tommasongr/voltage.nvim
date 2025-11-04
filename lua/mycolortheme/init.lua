local M = {}

function M.setup()
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	vim.o.background = "dark"
	vim.g.colors_name = "my color theme"

	local colors = {
		bg = "#000000",
		fg = "#ffffff"
	}

	local highlights = {
		Normal = { fg = colors.fg, bg = colors.bg }
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
