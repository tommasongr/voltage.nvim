local M = {}

function M.setup(colors, config)
	return {
		["@comment"] = { fg = colors.yellow.regular },

		["@constant"] = { fg = colors.magenta.regular },
		["@constant.builtin"] = { link = "@constant" },
		["@string"] = { fg = colors.green.regular },
		["@string.regex"] = { link = "@string" }, -- TODO: Differentiate regex
		["@string.escape"] = { link = "@string" },
		["@number"] = { link = "@constant" },
		["@boolean"] = { link = "@constant" },

		["@operator"] = { fg = colors.dimmed },

		["@function"] = { fg = colors.blue.regular },
		["@function.call"] = { fg = colors.fg },
		["@function.method.call"] = { link = "@function.call" },
		["@function.builtin"] = { link = "@function" },
		["@function.macro"] = { link = "@function" },
		["@method"] = { link = "@function.call" },
		["@method.call"] = { link = "@method" },

		["@keyword"] = { fg = colors.fg },
		["@keyword.function"] = { link = "@keyword" },
		["@keyword.operator"] = { link = "@keyword" },
		["@keyword.return"] = { link = "@keyword" },

		["@punctuation"] = { fg = colors.dimmed },
		["@punctuation.delimiter"] = { link = "@punctuation" },
		["@punctuation.bracket"] = { link = "@punctuation" },
		["@punctuation.special"] = { link = "@punctuation" },

		["@variable"] = { fg = colors.fg },
		["@variable.builtin"] = { link = "@variable" },
		["@variable.parameter"] = { link = "@variable" },
		["@variable.member"] = { link = "@variable" },

		["@type"] = { fg = colors.fg },
		["@type.builtin"] = { link = "@type" },
		["@type.definition"] = { link = "@type" },
		["@type.qualifier"] = { link = "@type" },
		["@tag"] = { fg = colors.yellow.regular },
		["@tag.attribute"] = { fg = colors.fg },
		["@tag.delimiter"] = { link = "@punctuation" },

		["@symbol"] = { fg = colors.blue.regular },

		["@string.special"] = { fg = colors.dimmed },

		-- ["@attribute"] = { link = "Normal" },
		-- ["@constructor"] = { link = "Normal" },
		-- ["@conditional"] = { link = "Normal" },
		-- ["@error"] = { link = "Normal" }, -- TODO: Add proper error color
		-- ["@exception"] = { link = "Normal" },
		-- ["@field"] = { link = "Normal" },
		-- ["@label"] = { link = "Normal" },
		-- ["@module"] = { link = "Normal" },
		-- ["@namespace"] = { link = "Normal" },
		-- -- ["@none"] = { fg = colors.magenta.regular },
		-- ["@parameter"] = { link = "Normal" },
		-- ["@parameter.reference"] = { link = "Normal" },
		-- ["@property"] = { link = "Normal" },
		-- ["@repeat"] = { link = "Normal" },
		-- ["@symbol"] = { link = "String" },
		-- ["@text"] = { link = "Normal" },
		-- ["@text.note"] = { fg = colors.blue.regular },
		-- ["@text.warning"] = { link = "Normal" }, -- TODO: Add proper error color
	}
end

return M
