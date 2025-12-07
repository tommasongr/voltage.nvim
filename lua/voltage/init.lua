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
		dimmed = "#636363",
		-- errors, spellbad, etc
		red = {
			lightest = "#fceae8",
			lighter  = "#f3bfba",
			light    = "#f69b94",
			regular  = "#f5746d",
			dark     = "#984742",
			darker   = "#47211e",
			darkest  = "#080202"
		},
		-- strings, numbers, etc
		green = {
			lightest = "#e6f3e8",
			lighter  = "#b3d9b9",
			light    = "#82cb92",
			regular  = "#46bc69",
			dark     = "#2b7440",
			darker   = "#14361d",
			darkest  = "#010502"
		},
		-- comments
		yellow = {
			lightest = "#f0f0e0",
			lighter  = "#d3d1a3",
			light    = "#c2bb64",
			regular  = "#b1a600",
			dark     = "#6d6600",
			darker   = "#322f04",
			darkest  = "#040300"
		},
		-- top-level definitions
		blue = {
			lightest = "#e4f0fb",
			lighter  = "#aed3f3",
			light    = "#78bff9",
			regular  = "#32a9fe",
			dark     = "#1f689d",
			darker   = "#0f304a",
			darkest  = "#010408"
		},
		-- constants
		magenta = {
			lightest = "#f6eaf6",
			lighter  = "#e3c1e4",
			light    = "#db9fde",
			regular  = "#d27bd8",
			dark     = "#824b85",
			darker   = "#3d233e",
			darkest  = "#060206"
		},
		cyan = {
			lightest = "#e0f3f3",
			lighter  = "#a0dbda",
			light    = "#4fcdcd",
			regular  = "#00bcbc",
			dark     = "#007576",
			darker   = "#003737",
			darkest  = "#000505"
		},
	}

	colors.fg = colors[M.config.accent].lightest
	colors.inverted = colors[M.config.accent].darkest
	-- colors.dimmed = colors[M.config.accent].dark

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
