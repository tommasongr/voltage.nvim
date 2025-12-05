vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim", name = "plenary" }, -- Common plugin dependency
	{ src = "https://github.com/mason-org/mason.nvim", name = "mason" },
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", name = "treesitter" },
	{ src = "https://github.com/ibhagwan/fzf-lua", name = "fzf" },
	{ src = "https://github.com/saghen/blink.cmp", name = "blink", version = "v1.6.0" },
	{ src = "https://github.com/echasnovski/mini.nvim", name = "mini", version = "stable" },
	{ src = "https://github.com/mcncl/alabaster.nvim", name = "alabaster" },
})

require("plugins.alabaster")
require("plugins.mycolortheme")
require("plugins.mason")
require("plugins.treesitter")
require("plugins.fzf")
require("plugins.blink")
require("plugins.mini")

-- Add
vim.api.nvim_create_user_command("PackAdd", function(args)
	vim.pack.add(args.fargs)
end, { nargs = "+" })

-- Delete
vim.api.nvim_create_user_command("PackDel", function(args)
	vim.pack.del(args.fargs)
end, { nargs = "+" })

-- Get
vim.api.nvim_create_user_command("PackGet", function()
	local plugins = vim.pack.get()
	vim.print(plugins)
end, {})

-- Update
vim.api.nvim_create_user_command("PackUpdate", function(args)
	if #args.fargs == 0 then
		vim.pack.update()
	else
		vim.pack.update(unpack(args.fargs))
	end
end, { nargs = "*" })
