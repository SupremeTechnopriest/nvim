vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope git_files<CR>", { desc = "Find git files" })
vim.keymap.set("n", "<leader>fp", ":Telescope tmux sessions<CR>", { desc = "Find projects" })
vim.keymap.set("n", "<leader>fw", ":Telescope tmux windows<CR>", { desc = "Find windows" })
