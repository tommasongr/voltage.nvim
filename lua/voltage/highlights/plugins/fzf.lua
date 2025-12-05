local M = {}

function M.setup(colors, config)
	local accent = colors[config.accent]

	return {
		FzfLuaNormal = { fg = colors.fg },
		FzfLuaBorder = { fg = accent.regular },
		FzfLuaTitle = { fg = accent.regular, bold = false },
	}
end

return M
