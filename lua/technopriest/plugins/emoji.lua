return {
	"xiyaowong/telescope-emoji.nvim",
	dependencies = {
		"nvim-telescop/telescope.nvim",
	},
	config = function()
		require("telescope").setup({
			extensions = {
				emoji = {
					action = function(emoji)
						vim.api.nvim_put({ emoji.value }, "c", false, true)
					end,
				},
			},
		})
	end,
}
