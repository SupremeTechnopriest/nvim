vim.keymap.set('n', '<leader>so', vim.cmd.so)
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.git_files, {})
vim.keymap.set('n', '<leader>fs', function ()
	telescope.grep_string({ search = vim.fn.input("Grep > ") })
end)
