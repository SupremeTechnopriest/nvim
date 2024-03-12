return {
	"neovim/nvim-lspconfig",
	cmd = { "LspInfo", "LspInstall", "LspStart" },
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "williamboman/mason-lspconfig.nvim" },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local lsp_defaults = lspconfig.util.default_config

		lsp_defaults.capabilities =
			vim.tbl_deep_extend("force", lsp_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

		local default_setup = function(server)
			lspconfig[server].setup({})
		end

		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {},
			handlers = {
				default_setup,
				helm_ls = function()
					require("lspconfig").helm_ls.setup({
						["helm-ls"] = {
							yamlls = {
								path = "yaml-language-server",
							},
						},
					})
				end,
				lua_ls = function()
					require("lspconfig").lua_ls.setup({
						settings = {
							Lua = {
								runtime = {
									version = "LuaJIT",
								},
								diagnostics = {
									globals = {
										"vim",
										"require",
									},
								},
								workspace = {
									library = vim.api.nvim_get_runtime_file("", true),
								},
								telemetry = {
									enable = false,
								},
							},
						},
					})
				end,
			},
		})
	end,
}
