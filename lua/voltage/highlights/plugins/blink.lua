local M = {}

function M.setup(colors, config)
	local accent = colors[config.accent]

	return {
		BlinkCmpMenu = {},
		BlinkCmpMenuBorder = { fg = accent.regular },
		BlinkCmpMenuSelection = { bg = accent.dark },
		BlinkCmpScrollBarThumb = { bg = accent.regular },
		BlinkCmpScrollBarGutter = { bg = accent.darker },

		BlinkCmpLabel = { fg = colors.fg },
		BlinkCmpLabelDeprecated = { fg = colors.dimmed, strikethrough = true },
		BlinkCmpLabelMatch = { fg = accent.regular, bold = true },
		BlinkCmpLabelDetail = { fg = colors.dimmed },
		BlinkCmpLabelDescription = { fg = colors.dimmed },

		BlinkCmpKind = { fg = accent.regular },

		BlinkCmpSource = { fg = colors.dimmed },
		BlinkCmpGhostText = { fg = colors.dimmed, italic = true },

		BlinkCmpDoc = { fg = colors.fg },
		BlinkCmpDocBorder = { fg = accent.regular },
		BlinkCmpDocSeparator = { fg = accent.light },
		BlinkCmpDocCursorLine = { bg = accent.dark },

		BlinkCmpSignatureHelp = { fg = colors.fg },
		BlinkCmpSignatureHelpBorder = { fg = accent.regular },
		BlinkCmpSignatureHelpActiveParameter = { fg = accent.regular, bold = true },
	}
end

return M
