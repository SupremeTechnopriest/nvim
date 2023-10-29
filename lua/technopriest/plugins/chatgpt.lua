return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	config = function()
		require("chatgpt").setup({
			async_api_key_cmd = 'op item get OpenAI --fields label="API Key"',
			openai_params = {
				model = "gpt-4",
			},
			popup_window = {
				border = {
					highlight = "TelescopePreviewBorder",
				},
				win_options = {
					winhighlight = "Normal:TelescopePreviewNormal,FloatBorder:FloatBorder",
				},
			},
			system_window = {
				border = {
					highlight = "TelescopePromptBorder",
				},
				win_options = {
					winhighlight = "Normal:TelescopePromptNormal,FloatBorder:FloatBorder",
				},
			},
			popup_input = {
				border = {
					highlight = "TelescopePromptBorder",
				},
				win_options = {
					winhighlight = "Normal:TelescopePromptNormal,FloatBorder:FloatBorder",
				},
			},
			settings_window = {
				win_options = {
					winhighlight = "Normal:TelescopePromptNormal,FloatBorder:FloatBorder",
				},
			},
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
