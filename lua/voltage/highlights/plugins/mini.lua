local M = {}

function M.setup(colors, config)
	local accent = colors[config.accent]

	return {
		MiniClueBorder = { fg = accent.regular },
		MiniClueDescGroup = { fg = accent.regular },
		MiniClueDescSingle = { fg = colors.fg },
		MiniClueNextKey = { fg = accent.light },
		MiniClueNextKeyWithPostkeys = { fg = accent.light, bold = true }, -- TODO Verify use case
		MiniClueSeparator = { fg = accent.light },
		MiniClueTitle = { fg = accent.regular },

		MiniDiffSignAdd = { fg = colors.green.dark },
		MiniDiffSignChange = { fg = colors.yellow.dark },
		MiniDiffSignDelete = { fg = colors.red.dark },

		MiniHipatternsFixme = { bg = colors.red.darker, fg = colors.red.regular },
		MiniHipatternsHack = { bg = colors.magenta.darker, fg = colors.magenta.regular },
		MiniHipatternsTodo = { bg = colors.blue.darker, fg = colors.blue.regular },
		MiniHipatternsNote = { bg = colors.yellow.darker, fg = colors.yellow.regular },

		MiniNotifyBorder = { fg = accent.regular },
		MiniNotifyLspProgress = { fg = accent.regular },
		MiniNotifyNormal = { fg = colors.fg },
		MiniNotifyTitle = { fg = accent.regular },

		-- TODO Add groups for status line
	}
end

return M
