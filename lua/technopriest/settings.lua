vim.g.mapleader = ' '
vim.g.undotree_WindowLayout = 3

-- Highlights --
vim.api.nvim_set_hl(0, 'NormalMode', { fg = '#f9cc6c' })
vim.api.nvim_set_hl(0, 'InsertMode', { fg = '#adda78' })
vim.api.nvim_set_hl(0, 'VisualMode', { fg = '#a8a9eb' })
vim.api.nvim_set_hl(0, 'ReplaceMode', { fg = '#fd6883' })
vim.api.nvim_set_hl(0, 'SelectMode', { fg = '#a8a9eb' })
vim.api.nvim_set_hl(0, 'TerminalMode', { fg = '#fd6883' })
vim.api.nvim_set_hl(0, 'TerminalNormalMode', { fg = '#f9cc6c' })
vim.api.nvim_set_hl(0, 'IblScope', { fg = '#85dacc' })

-- Cursor --
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.termguicolors = true

-- Numbers --
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs --
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Indent --
vim.opt.smartindent = true

-- Search --
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Fold --
vim.opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.opt.foldcolumn = '1'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
