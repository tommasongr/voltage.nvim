local M = {}

function M.setup(colors, config)
	local accent = colors[config.accent]

	return {
		NetrwDir = { fg = accent.regular },
		NetrwClassify = { fg = accent.lighter },
		NetrwExe = { fg = colors.green.regular },
		NetrwSymLink = { fg = colors.blue.light },
		NetrwTreeBar = { fg = accent.dark },
		NetrwPlain = { fg = colors.fg },
		NetrwMarkFile = { bg = accent.darker, fg = accent.regular },
		NetrwQuickHelp = { fg = colors.dimmed },
		NetrwVersion = { fg = colors.dimmed },
		NetrwCopyFile = { fg = colors.blue.regular },
	}
end

return M
