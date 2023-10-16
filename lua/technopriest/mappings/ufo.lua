local ufo = require("ufo")

-- za toggle
-- zo open
-- zc close
vim.keymap.set("n", "zO", ufo.openAllFolds)
vim.keymap.set("n", "zC", ufo.closeAllFolds)
vim.keymap.set("n", "zK", function()
	local winid = require("ufo").peekFoldedLinesUnderCursor()
	if not winid then
		-- vim.lsp.buf.hover()
		vim.cmd([[ Lspsaga hover_doc ]])
	end
end)
