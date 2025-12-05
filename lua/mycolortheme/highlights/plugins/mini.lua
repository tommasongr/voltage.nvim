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

		MiniDiffSignAdd = { fg = colors.green.light },
		MiniDiffSignChange = { fg = colors.blue.light },
		MiniDiffSignDelete = { fg = colors.red.light },

		MiniHipatternsFixme = { bg = colors.red.dark, fg = colors.red.regular },
		MiniHipatternsHack = { bg = colors.purple.dark, fg = colors.purple.regular },
		MiniHipatternsTodo = { bg = colors.blue.dark, fg = colors.blue.regular },
		MiniHipatternsNote = { bg = colors.yellow.dark, fg = colors.yellow.regular },

		MiniNotifyBorder = { fg = accent.regular },
		MiniNotifyLspProgress = { fg = accent.regular },
		MiniNotifyNormal = { fg = colors.fg },
		MiniNotifyTitle = { fg = accent.regular },

		-- TODO Add groups for status line
	}
end

return M
