local M = {}

function M.setup(colors, config)
	return {
		Comment = { fg = colors.yellow.regular, italic = true },

		Constant = { fg = colors.purple.regular },
		Boolean = { link = "Constant" },
		String = { fg = colors.green.regular },
		Character = { link = "String" },
		Number = { link = "Constant" },
		Float = { link = "Number" },
		Operator = { fg = colors.dimmed },

		Identifier = { link = "Normal" },
		Function = { fg = colors.blue.regular },
		Statement = { link = "Normal" },
		Conditional = { link = "Statement" },
		Repeat = { link = "Statement" },
		Label = { link = "Statement" },
		Keyword = { link = "Statement" },
		Exception = { link = "Statement" },
		PreProc = { link = "Statement" },
		Include = { link = "Statement" },
		Define = { link = "Statement" },
		Macro = { link = "Statement" },
		PreCondit = { link = "Statement" },
		Type = { link = "Statement" },
		StorageClass = { link = "Statement" },
		Structure = { link = "Statement" },
		Typedef = { link = "Statement" },

		Delimiter = { fg = colors.dimmed },

		Special = { fg = colors.dimmed },
		SpecialComment = { link = "Special" },

		Underlined = { underline = true },
		Italic = { italic = true },
	}
end

return M
