local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", function()
	mark.add_file()
end, { desc = "Harpoon mark file" })

vim.keymap.set("n", "<leader>hm", function()
	ui.toggle_quick_menu()
end, { desc = "Toggle harpoon quick menu" })

vim.keymap.set("n", "<leader>hn", function()
	ui.nav_next()
end, { desc = "Harpoon next file" })

vim.keymap.set("n", "<leader>hp", function()
	ui.nav_prev()
end, { desc = "Harpoon previous file" })

vim.keymap.set("n", "<leader>h1", function()
	ui.nav_file(1)
end, { desc = "Harpoon file 1" })

vim.keymap.set("n", "<leader>h2", function()
	ui.nav_file(2)
end, { desc = "Harpoon file 2" })

vim.keymap.set("n", "<leader>h3", function()
	ui.nav_file(3)
end, { desc = "Harpoon file 3" })

vim.keymap.set("n", "<leader>h4", function()
	ui.nav_file(4)
end, { desc = "Harpoon file 4" })

vim.keymap.set("n", "<leader>h5", function()
	ui.nav_file(5)
end, { desc = "Harpoon file 5" })

vim.keymap.set("n", "<leader>h6", function()
	ui.nav_file(6)
end, { desc = "Harpoon file 6" })

vim.keymap.set("n", "<leader>h7", function()
	ui.nav_file(7)
end, { desc = "Harpoon file 7" })

vim.keymap.set("n", "<leader>h8", function()
	ui.nav_file(8)
end, { desc = "Harpoon file 8" })

vim.keymap.set("n", "<leader>h9", function()
	ui.nav_file(9)
end, { desc = "Harpoon file 9" })
