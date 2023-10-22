return {
	"epwalsh/obsidian.nvim",
	lazy = true,
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"telescope-nvim/telescope.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/vaults/Personal",
			},
			{
				name = "edgemesh",
				path = "~/vaults/Edgemesh",
			},
		},
		finder = "telescope.nvim",
		mappings = {},
		daily_notes = {
			folder = "daily",
		},
	},
}
