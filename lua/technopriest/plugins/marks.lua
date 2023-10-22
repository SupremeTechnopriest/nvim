return {
	"chentoast/marks.nvim",
	config = function()
		require("marks").setup({
			default_mappings = false,
			excluded_filetypes = {},
			cyclic = true,
		})
	end,
}
