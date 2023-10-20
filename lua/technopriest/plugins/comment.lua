return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({
			padding = true,
			sticky = true,
			ignore = nil,
			toggler = {
				line = "<leader>/c",
				block = "<leader>/b",
			},
			opleader = {
				line = "/c",
				block = "/b",
			},
			extra = {
				above = "<leader>/O",
				below = "<leader>/o",
				eol = "<leader>/a",
			},
			mappings = {
				basic = true,
				extra = true,
			},
			pre_hook = nil,
			post_hook = nil,
		})
	end,
}
