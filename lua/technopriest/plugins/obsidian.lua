return {
	"epwalsh/obsidian.nvim",
	lazy = true,
	event = {
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		-- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		"BufReadPre path/to/my-vault/**.md",
		"BufNewFile path/to/my-vault/**.md",
	},
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
		"telescope-nvim/telescope.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/vaults/personal",
			},
			{
				name = "edgemesh",
				path = "~/vaults/edgemesh",
			},
		},
		finder = "telescope.nvim",
	},
}
