local M = {}

function M.setup(config)
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	vim.o.background = config.style
	vim.g.colors_name = "my color theme"

	local colors = {
		bg = nil,
		fg = "#f0f0f0",
		dimmed = "#707070",
		inverted = "#000000",
		-- strings, numbers, etc
		green = {
			light = "#99cda3",
			regular = "#54dd7d",
			dark    = "#1c3e24",
			darker  = "#0c1a0f"
		},
		-- constants
		purple = {
			light = "#dcabd6",
			regular = "#fd8ff4",
			dark    = "#472944",
			darker  = "#1e111c"
		},
		-- comments
		yellow = {
			light = "#d2bc82",
			regular = "#ebb600",
			dark    = "#41340a",
			darker  = "#1b1505"
		},
		-- top-level definitions
		blue = {
			light = "#7dccda",
			regular = "#00d8f5",
			dark    = "#003d46",
			darker  = "#031a1e"
		},
		-- errors, spellbad, etc
		red = {
			light = "#edaaa4",
			regular = "#ff2335",
			dark    = "#502825",
			darker  = "#22100f"
		},
	}

	for _, highlight in ipairs({ "editor", "syntax", "treesitter" }) do
		local mod = require("mycolortheme.highlights." .. highlight)

		for group, opts in pairs(mod.setup(colors, config)) do
			vim.api.nvim_set_hl(0, group, opts)
		end
	end

	for _, highlight in ipairs({ "ruby" }) do
		local mod = require("mycolortheme.highlights.languages." .. highlight)

		for group, opts in pairs(mod.setup(colors, config)) do
			vim.api.nvim_set_hl(0, group, opts)
		end
	end

	for _, highlight in ipairs({ "netrw", "fzf", "blink", "mini" }) do
		local mod = require("mycolortheme.highlights.plugins." .. highlight)

		for group, opts in pairs(mod.setup(colors, config)) do
			vim.api.nvim_set_hl(0, group, opts)
		end
	end
end

return M
