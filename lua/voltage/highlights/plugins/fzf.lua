local M = {}

function M.setup(colors, config)
	local accent = colors[config.accent]

	return {
		FzfLuaNormal = { fg = colors.fg, bg = nil },
		FzfLuaBorder = { fg = accent.regular, bg = nil },
		FzfLuaTitle = { fg = accent.regular, bold = false },
	}
end

return M
