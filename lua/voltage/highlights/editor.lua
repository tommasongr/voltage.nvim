local M = {}

function M.setup(colors, config)
	local accent = colors[config.accent]

	return {
		Normal = { fg = colors.fg },
		NormalFloat = { fg = colors.fg },
		NonText = { fg = colors.dimmed },
		Conceal = { fg = colors.dimmed },

		Cursor = { bg = accent.regular, fg = colors.inverted },
		CursorLine = { bg = accent.darkest  },
		CursorLineNr = { fg = accent.regular },
		CursorColumn = { bg = accent.darkest },
		ColorColumn = { bg = accent.dark },

		Visual = { bg = accent.darker },
		VisualNOS = { bg = accent.darker },

		Directory = { fg = accent.regular },

		SpecialKey = { fg = colors.dimmed },
		EndOfBuffer = { fg = colors.dimmed },

		DiffAdd = { bg = colors.green.darker, fg = colors.green.light },
		DiffDelete = { bg = colors.red.darker, fg = colors.red.light },
		DiffText = { bg = colors.yellow.regular, fg = colors.inverted },
		DiffChange = { bg = colors.yellow.darker, fg = colors.yellow.light },

		Search = { bg = accent.darker, fg = accent.light },
		IncSearch = { bg = accent.regular, fg = colors.inverted },
		MatchParen = { fg = accent.regular },

		LineNr = { fg = colors.dimmed },
		SignColumn = {},

		Folded = { fg = accent.light },
		FoldColumn = { fg = accent.light },

		WinBar = { bg = accent.dark, fg = accent.regular }, -- TODO: Verify
		WinBarNC = { bg = accent.darker, fg = accent.regular }, -- TODO: Verify
		WinSeparator = { fg = accent.regular },
		VertSplit = { fg = accent.regular },

		Pmenu = { fg = colors.fg },
		PmenuExtra = { fg = colors.dimmed },
		PmenuSel = { bg = accent.darker },
		PmenuSbar = { bg = accent.regular },
		PmenuThumb = { bg = accent.regular },
		PmenuKind = { fg = accent.regular },
		FloatBorder = { fg = accent.regular },
		WildMenu = { bg = accent.darker },

		ErrorMsg = { bg = colors.red.regular, fg = colors.inverted },
		WarningMsg = { bg = colors.yellow.regular, fg = colors.inverted },
		MoreMsg = { fg = colors.green.regular },
		Question = { fg = colors.blue.regular },

		StatusLine = { bg = accent.darker, fg = accent.lighter },
		StatusLineNC = { bg = accent.darkest, fg = accent.light },
		TabLine = { bg = accent.darker, fg = accent.light },
		TabLineFill = { bg = accent.darker },
		TabLineSel = { bg = accent.dark, fg = accent.lighter },

		SpellBad = { undercurl = true, sp = colors.red.light },
		SpellCap = { undercurl = true, sp = colors.blue.light },
		SpellLocal = { undercurl = true, sp = colors.green.light },
		SpellRare = { undercurl = true, sp = colors.magenta.light },

		Title = { fg = accent.regular, bold = true },

		TermCursor = { bg = accent.regular, fg = colors.inverted },
		TermCursorNC = { bg = accent.darker, fg = colors.dimmed },

		QuickFixLine = { bg = accent.darker },
	}
end

return M
