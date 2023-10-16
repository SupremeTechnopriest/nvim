local conform = require("conform")
local lint = require("lint")

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { buffer = event.buf, desc = "LSP Hover" })

		vim.keymap.set(
			"n",
			"gd",
			"<cmd>lua vim.lsp.buf.definition()<cr>",
			{ buffer = event.buf, desc = "Go to definition" }
		)

		vim.keymap.set(
			"n",
			"gD",
			"<cmd>lua vim.lsp.buf.declaration()<cr>",
			{ buffer = event.buf, desc = "Go to declaration" }
		)

		vim.keymap.set(
			"n",
			"gi",
			"<cmd>lua vim.lsp.buf.implementation()<cr>",
			{ buffer = event.buf, desc = "Go to implementation" }
		)

		vim.keymap.set(
			"n",
			"go",
			"<cmd>lua vim.lsp.buf.type_definition()<cr>",
			{ buffer = event.buf, desc = "Go to type definition" }
		)

		vim.keymap.set(
			"n",
			"gr",
			"<cmd>lua vim.lsp.buf.references()<cr>",
			{ buffer = event.buf, desc = "Go to references" }
		)

		vim.keymap.set(
			"n",
			"gs",
			"<cmd>lua vim.lsp.buf.signature_help()<cr>",
			{ buffer = event.buf, desc = "Signature help" }
		)

		vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>", { buffer = event.buf, desc = "Rename" })

		vim.keymap.set(
			"n",
			"<leader>a",
			"<cmd>lua vim.lsp.buf.code_action()<cr>",
			{ buffer = event.buf, desc = "Code action" }
		)

		vim.keymap.set({ "n", "v", "x" }, "<leader>f", function()
			conform.format({
				async = false,
				lsp_fallback = true,
				timeout_ms = 500,
			})
		end, { buffer = event.buf, desc = "Format" })

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { buffer = event.buf, desc = "Lint" })

		vim.keymap.set(
			"n",
			"gl",
			"<cmd>lua vim.diagnostic.open_float()<cr>",
			{ buffer = event.buf, desc = "Diagnostic float" }
		)

		vim.keymap.set(
			"n",
			"[d",
			"<cmd>lua vim.diagnostic.goto_prev()<cr>",
			{ buffer = event.buf, desc = "Previous diagnostic" }
		)

		vim.keymap.set(
			"n",
			"]d",
			"<cmd>lua vim.diagnostic.goto_next()<cr>",
			{ buffer = event.buf, desc = "Next diagnostic" }
		)
	end,
})
