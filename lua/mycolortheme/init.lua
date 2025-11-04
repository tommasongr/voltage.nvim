local M = {}

function M.setup()
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
