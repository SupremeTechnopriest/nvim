require("technopriest/mappings/lsp")
require("technopriest/mappings/neotree")
require("technopriest/mappings/telescope")
require("technopriest/mappings/bufferline")
require("technopriest/mappings/ufo")
require("technopriest/mappings/tests")
require("technopriest/mappings/projectionist")

-- No Op --
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Leader --
vim.keymap.set("n", ";", ":", { desc = "Command mode" })
vim.keymap.set("n", "<leader>so", vim.cmd.so, { desc = "Source current buffer" })

-- Focus Split --
vim.keymap.set("n", "<leader><leader>", "<C-w>", { desc = "Window selection mode" })

-- Zen Mode --
vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode, { desc = "Enter zen mode" })

-- Move Lines --
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })

-- Center Search Terms --
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search term" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search term" })

-- Preserve Paste Buffer --
vim.keymap.set("x", "<leader>p", [['_dP]], { desc = "Paste and preserve buffer" })

-- Delete to Void Register --
vim.keymap.set({ "n", "v" }, "<leader>d", [['_d]], { desc = "Delete to void" })

-- Copy to System Clipboard --
vim.keymap.set({ "n", "v" }, "<leader>y", [['+y]], { desc = "Copy to system clipboard (after)" })
vim.keymap.set("n", "<leader>Y", [['+Y]], { desc = "Copy to system clipboard (before)" })

-- Replace Current Word --
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]], { desc = "Find and replace" })

-- Make Executable --
vim.keymap.set("n", "<leader>x", ":!chmod +x %<CR>", { silent = true, desc = "Make executable" })

-- Search --
vim.keymap.set("n", ".", ";", { desc = "Next" })

-- Comments --
vim.keymap.set({ "n", "v" }, "<leader>/bb", ":CBlbox 1<CR>", { desc = "Border box comment" })
vim.keymap.set({ "n", "v" }, "<leader>/be", ":CBcbox 18<CR>", { desc = "Enclosed box comment" })
vim.keymap.set({ "n", "v" }, "<leader>/bq", ":CBrbox 12<CR>", { desc = "Quote box comment" })
vim.keymap.set({ "n", "v" }, "<leader>/bh", ":CBrbox 20<CR>", { desc = "Header box comment" })
vim.keymap.set({ "n", "v" }, "<leader>/bl", ":CBline 2<CR>", { desc = "Line comment" })

-- Undo Tree --
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undo tree" })

-- Git --
vim.keymap.set("n", "<leader>gc", ":Telescope gitmoji<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { desc = "Git branches" })
vim.keymap.set("n", "<leader>gs", ":Telescope git_status<CR>", { desc = "Git status" })
vim.keymap.set("n", "<leader>gh", ":Telescope git_commits<CR>", { desc = "Git commits" })
vim.keymap.set("n", "<leader>gbh", ":Telescope git_bcommits<CR>", { desc = "Git commits for current buffer" })
vim.keymap.set(
	"n",
	"<leader>gpo",
	function()
		vim.cmd("!git push origin `git rev-parse --abbrev-ref HEAD`")
		vim.cmd("Neotree git_status focus left")
	end,
	-- ":!git push origin `git rev-parse --abbrev-ref HEAD`<CR>\|:Neotree git_status left",
	{ desc = "Git push current branch" }
)
vim.keymap.set("n", "<leader>git", ":Neogit<CR>", { desc = "Git" })

-- Annotation --
vim.keymap.set("n", "<leader>nc", ":Neogen class<CR>", { desc = "Notate class" })
vim.keymap.set("n", "<leader>nf", ":Neogen func<CR>", { desc = "Notate function" })
vim.keymap.set("n", "<leader>nt", ":Neogen type<CR>", { desc = "Notate type" })
vim.keymap.set("n", "<leader>nm", ":Neogen file<CR>", { desc = "Notate file" })
