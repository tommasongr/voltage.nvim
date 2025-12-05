local M = {}

M.config = {
	accent = "blue",
	transparent = false
}

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})

	vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	vim.o.background = "dark"
	vim.g.colors_name = "voltage"

	local colors = {
		-- strings, numbers, etc
		green = {
			lightest = "#e6f3e8",
			lighter = "#68766a",
			light = "#99cda3",
			regular = "#54dd7d",
			dark    = "#1c3e24",
			darker  = "#0c1a0f",
			darkest = "#010502"
		},
		-- constants
		purple = {
			lightest = "#f7eaf5",
			lighter = "#7a6d79",
			light = "#dcabd6",
			regular = "#fd8ff4",
			dark    = "#472944",
			darker  = "#1e111c",
			darkest = "#060206"
		},
		-- comments
		yellow = {
			lightest = "#f4eee0",
			lighter = "#777161",
			light = "#d2bc82",
			regular = "#ebb600",
			dark    = "#41340a",
			darker  = "#1b1505",
			darkest = "#050300"
		},
		-- top-level definitions
		blue = {
			lightest = "#e0f2f6",
			lighter = "#61767a",
			light = "#7dccda",
			regular = "#00d8f5",
			dark    = "#003d46",
			darker  = "#031a1e",
			darkest = "#000406"
		},
		-- errors, spellbad, etc
		red = {
			lightest = "#fceae8",
			lighter = "#806c6a",
			light = "#edaaa4",
			regular = "#ff2335",
			dark    = "#502825",
			darker  = "#22100f",
			darkest = "#080202"
		},
	}

	colors.fg = colors[M.config.accent].lightest
	colors.dimmed = colors[M.config.accent].lighter

	for _, highlight in ipairs({ "editor", "syntax", "treesitter" }) do
		local mod = require("voltage.highlights." .. highlight)

		for group, group_opts in pairs(mod.setup(colors, M.config)) do
			vim.api.nvim_set_hl(0, group, group_opts)
		end
	end

	for _, highlight in ipairs({ "ruby" }) do
		local mod = require("voltage.highlights.languages." .. highlight)

		for group, group_opts in pairs(mod.setup(colors, M.config)) do
			vim.api.nvim_set_hl(0, group, group_opts)
		end
	end

	for _, highlight in ipairs({ "netrw", "fzf", "blink", "mini" }) do
		local mod = require("voltage.highlights.plugins." .. highlight)

		for group, group_opts in pairs(mod.setup(colors, M.config)) do
			vim.api.nvim_set_hl(0, group, group_opts)
		end
	end
end

return M
