require 'technopriest/mappings/lsp'
require 'technopriest/mappings/neotree'
require 'technopriest/mappings/telescope'
require 'technopriest/mappings/bufferline'
require 'technopriest/mappings/ufo'

-- No Op --
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Leader --
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', '<leader>so', vim.cmd.so)

-- Focus Split --
vim.keymap.set('n', '<leader><leader>', '<C-w>')

-- Zen Mode --
vim.keymap.set('n', '<leader>z', vim.cmd.ZenMode)

-- Move Lines --
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', 'mzJ`z')

-- Center Search Terms --
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Preserve Paste Buffer --
vim.keymap.set('x', '<leader>p', [['_dP]])

-- Delete to Void Register --
vim.keymap.set({ 'n', 'v' }, '<leader>d', [['_d]])

-- Copy to System Clipboard --
vim.keymap.set({ 'n', 'v' }, '<leader>y', [['+y]])
vim.keymap.set('n', '<leader>Y', [['+Y]])

-- Format & Refactor --
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename)

-- Replace Current Word --
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make Executable --
vim.keymap.set('n', '<leader>x', ':!chmod +x %<CR>', { silent = true })

-- Search --
vim.keymap.set('n', '.', ';')

-- Comments --
vim.keymap.set({ 'n', 'v' }, '/bb', ':CBlbox 1<CR>')
vim.keymap.set({ 'n', 'v' }, '/be', ':CBcbox 18<CR>')
vim.keymap.set({ 'n', 'v' }, '/bq', ':CBrbox 12<CR>')
vim.keymap.set({ 'n', 'v' }, '/bh', ':CBrbox 20<CR>')
vim.keymap.set({ 'n', 'v' }, '/bl', ':CBline 2<CR>')

-- Undo Tree --
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Git --
vim.keymap.set('n', '<leader>gc', ':Telescope gitmoji<CR>')
vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>')
vim.keymap.set('n', '<leader>gs', ':Telescope git_status<CR>')
vim.keymap.set('n', '<leader>gh', ':Telescope git_commits<CR>')
vim.keymap.set('n', '<leader>gbh', ':Telescope git_bcommits<CR>')
vim.keymap.set('n', '<leader>gpo', ':!git push origin `git rev-parse --abbrev-ref HEAD`<CR>')
vim.keymap.set('n', '<leader>git', ':Neogit<CR>')


