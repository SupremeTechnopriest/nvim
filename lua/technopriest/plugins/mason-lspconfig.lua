return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"bash-language-server",
				"helm_ls",
				"html-lsp",
				"css-lsp",
				"json-lsp",
				"lua-language-server",
				"rust-analyzer",
				"tailwindcss-language-server",
				"typescript-language-server",
				"yaml-language-server",
				"zls",
			},
			automatic_installation = true,
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"eslint_d",
				"cspell",
				"markdownlint",
				"stylua",
			},
			run_on_start = true,
			start_delay = 3000,
			debounce_hours = 5,
		})
	end,
}
