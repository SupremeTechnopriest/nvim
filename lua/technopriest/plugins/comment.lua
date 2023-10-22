return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({
			padding = true,
			sticky = true,
			ignore = nil,
			mappings = false,
			pre_hook = nil,
			post_hook = nil,
		})
	end,
}
