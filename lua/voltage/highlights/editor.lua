local M = {}

function M.setup(colors, config)
	local accent = colors[config.accent]

	return {
		Normal = { fg = colors.fg, bg = colors.bg },
		NonText = { fg = colors.dimmed },
		Conceal = { fg = colors.dimmed },

		Cursor = { bg = accent.regular, fg = colors.inverted },
		CursorLine = { bg = accent.darker },
		CursorColumn = { bg = accent.darker },
		ColorColumn = { bg = accent.dark },

		Visual = { bg = accent.dark },
		VisualNOS = { bg = accent.darker },

		Directory = { fg = accent.regular },

		SpecialKey = { fg = colors.dimmed },
		EndOfBuffer = { fg = colors.dimmed },

		DiffAdd = { bg = colors.green.dark, fg = colors.green.regular },
		DiffDelete = { bg = colors.red.dark, fg = colors.red.regular },
		DiffText = { bg = colors.yellow.regular, fg = colors.yellow.darker },
		DiffChange = { bg = colors.yellow.dark, fg = colors.yellow.regular },

		Search = { bg = accent.dark, fg = accent.regular },
		IncSearch = { bg = accent.regular, fg = accent.darker },
		MatchParen = { fg = accent.regular },

		LineNr = { fg = colors.dimmed },
		CursorLineNr = { fg = accent.regular },
		SignColumn = {},

		Folded = { fg = accent.light },
		FoldColumn = { fg = accent.light },

		WinBar = { bg = accent.dark, fg = accent.regular },
		WinBarNC = { bg = accent.darker, fg = accent.regular },
		WinSeparator = { fg = accent.light },
		VertSplit = { fg = accent.light },

		Pmenu = { fg = colors.fg },
		PmenuExtra = { fg = colors.dimmed },
		PmenuSel = { bg = accent.dark },
		PmenuSbar = { bg = accent.regular },
		PmenuThumb = { bg = accent.regular },
		PmenuKind = { fg = accent.regular },
		NormalFloat = {},
		FloatBorder = { fg = accent.regular },
		WildMenu = { bg = accent.dark },

		ErrorMsg = { fg = colors.red.regular, bg = colors.red.dark },
		WarningMsg = { bg = colors.yellow.dark, fg = colors.yellow.regular },
		MoreMsg = { fg = colors.green.regular },
		Question = { fg = colors.blue.regular },

		StatusLine = { bg = accent.dark, fg = accent.regular },
		StatusLineNC = { bg = accent.darker, fg = accent.regular },
		TabLine = { bg = accent.dark, fg = accent.regular },
		TabLineFill = { bg = accent.dark },
		TabLineSel = { bg = accent.darker, fg = accent.regular },

		SpellBad = { undercurl = true, sp = colors.red.light },
		SpellCap = { undercurl = true, sp = colors.blue.light },
		SpellLocal = { undercurl = true, sp = colors.green.light },
		SpellRare = { undercurl = true, sp = colors.purple.light },

		Title = { fg = accent.regular },

		TermCursor = { bg = accent.regular, fg = colors.inverted },
		TermCursorNC = { bg = accent.darker, fg = colors.dimmed },

		QuickFixLine = { bg = accent.dark },
	}
end

return M
