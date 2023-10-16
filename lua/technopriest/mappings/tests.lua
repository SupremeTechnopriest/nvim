vim.keymap.set("n", "<leader>rts", ":Neotest run<CR>", { desc = "Run full test suite" })
vim.keymap.set("n", "<leader>rtf", ":Neotest run file<CR>", { desc = "Run test file" })
vim.keymap.set("n", "<leader>rtc", ":Neotest run<CR>", { desc = "Run test under cursor" })
vim.keymap.set("n", "<leader>rtl", ":Neotest run last<CR>", { desc = "Run last test" })
