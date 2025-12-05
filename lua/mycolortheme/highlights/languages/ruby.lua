local M = {}

function M.setup(colors, config)
	return {
		["@string.special.symbol.ruby"] = { fg = colors.green.regular },
	}
end

return M
