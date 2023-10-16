vim.keymap.set("n", "<leader>wpf", ":TroubleToggle document_diagnostics<CR>", { desc = "Toggle document diagnostics" })
vim.keymap.set(
	"n",
	"<leader>wpp",
	":TroubleToggle workspace_diagnostics<CR>",
	{ desc = "Toggle workspace diagnostics " }
)
