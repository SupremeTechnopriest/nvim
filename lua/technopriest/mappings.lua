local wk = require("which-key")

--  ╭──────────────────────────────────────────────────────────╮
--  │ Overrides                                                │
--  ╰──────────────────────────────────────────────────────────╯

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("i", "<C-c>", "<Esc>")

--  ╭──────────────────────────────────────────────────────────╮
--  │ Global                                                   │
--  ╰──────────────────────────────────────────────────────────╯

wk.register({
	s = { "<cmd>w<CR>", "Save" },
	z = { "<cmd>ZenMode<CR>", "Zen mode" },
	d = { '"_d', "Delete preserve", mode = { "n", "v" } },
	y = { '"+y', "System copy before", mode = { "n", "v" } },
	Y = { '"+Y', "System copy after", mode = { "n", "v" } },
	p = { '"+p', "System paste before", mode = { "n", "v" } },
	P = { '"+P', "System paste after", mode = { "n", "v" } },
	r = { [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]], "Replace word", mode = { "n", "v" } },
	x = { "<cmd>!chmod +x %<CR>", "Make executable", { silent = true } },
	u = { "<cmd>UndotreeToggle<CR>", "Undo history" },
	t = { "<cmd>TSPlaygroundToggle<CR>", "AST Viewer" },
	T = { "<cmd>TSNodeUnderCursor", "Node info" },
	e = { "<cmd>Telescope emoji<CR>", "Emoji picker" },
}, { prefix = "<leader>" })

--  ╭──────────────────────────────────────────────────────────╮
--  │ Movement                                                 │
--  ╰──────────────────────────────────────────────────────────╯

local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")

vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)

wk.register({
	["<C-d>"] = { '<cmd>call smoothie#do("<C-d>")<CR>', "Half page down" },
	["<C-u>"] = { '<cmd>call smoothie#do("<C-u>")<CR>', "Half page up" },
	["<C-f>"] = { '<cmd>call smoothie#do("<C-f>")<CR>', "Full page down" },
	["<C-b>"] = { '<cmd>call smoothie#do("<C-b>")<CR>', "Full up down" },
	["<S-Down>"] = { '<cmd>call smoothie#do("<S-Down>")<CR>', "Full page down" },
	["<S-Up>"] = { '<cmd>call smoothie#do("<S-Up>")<CR>', "Full up down" },
	["<PageUp>"] = { '<cmd>call smoothie#do("gg")<CR>', "Top" },
	["<PageDown>"] = { '<cmd>call smoothie#do("G")<CR>', "Bottom" },
	["gg"] = { '<cmd>call smoothie#do("gg")<CR>', "Top" },
	["G"] = { '<cmd>call smoothie#do("G")<CR>', "Bottom" },
}, { mode = { "n", "v" } })

--  ╭──────────────────────────────────────────────────────────╮
--  │ Lines                                                    │
--  ╰──────────────────────────────────────────────────────────╯

wk.register({
	J = { "mzJ`z", "Join lines" },
})

wk.register({
	J = { ":m '>+1<CR>gv=gv", "Move lines down", mode = { "v" } },
	K = { ":m '<-2<CR>gv=gv", "Move lines up", mode = { "v" } },
	n = { "nzzzv", "Next search term" },
	N = { "Nzzzv", "Previous search term" },
})

--  ╭──────────────────────────────────────────────────────────╮
--  │ Window                                                   │
--  ╰──────────────────────────────────────────────────────────╯

wk.register({
	w = {
		name = "Window",
		w = { "<cmd>Neotree toggle<CR>", "Toggle" },
		f = { "<cmd>Neotree filesystem focus left<CR>", "Files" },
		b = { "<cmd>Neotree buffers focus left<CR>", "Buffers" },
		g = { "<cmd>Neotree git_status focus left<CR>", "Git" },
		p = {
			name = "Problems",
			p = { "<cmd>TroubleToggle workspace_diagnostics<CR>", "Project" },
			f = { "<cmd>TroubleToggle document_diagnostics<CR>", "Current file" },
		},
		t = { "<cmd>TodoLocList<CR>", "Todos" },
	},
}, { prefix = "<leader>" })

--  ╭──────────────────────────────────────────────────────────╮
--  │ Splits                                                   │
--  ╰──────────────────────────────────────────────────────────╯

local splits = require("smart-splits")

wk.register({
	["<leader>"] = { "<C-w>", "Split mode" },
	["<leader>v"] = { "<cmd>vs<CR>", "Split Vertical" },
	["<leader>s"] = { "<cmd>sp<CR>", "Split Horizontal" },
	["<leader>q"] = { "<cmd>q<CR>", "Close split" },
	["<leader>l"] = { splits.move_cursor_left, "Move cursor left" },
	["<leader>h"] = { splits.move_cursor_right, "Move cursor right" },
	["<leader>j"] = { splits.move_cursor_down, "Move cursor down" },
	["<leader>k"] = { splits.move_cursor_up, "Move cursor up" },
	["<leader>L"] = { splits.resize_left, "Resize left" },
	["<leader>H"] = { splits.resize_right, "Resize right" },
	["<leader>J"] = { splits.resize_down, "Resize down" },
	["<leader>K"] = { splits.resize_up, "Resize up" },
}, { prefix = "<leader>" })

--  ╭──────────────────────────────────────────────────────────╮
--  │ Buffers                                                  │
--  ╰──────────────────────────────────────────────────────────╯

local bufdelete = require("bufdelete")

wk.register({
	["<Tab>"] = { "<cmd>BufferLineCycleNext<CR>", "Next buffer" },
	["<S-Tab>"] = { "<cmd>BufferLineCyclePrev<CR>", "Previous buffer" },
	q = {
		name = "Close Buffer",
		q = {
			function()
				bufdelete.bufdelete(0, true)
			end,
			"Current Buffer",
		},
		h = { "<cmd>BufferLineCloseLeft<CR>", "Left buffers" },
		l = { "<cmd>BufferLineCloseRight<CR>", "Right buffers" },
		a = { "<cmd>BufferLineCloseOthers<CR>", "Other buffers" },
		f = { "<cmd>BufferLinePickClose<CR>", "Pick buffer" },
	},
	b = {
		name = "Select buffer",
		p = { "<cmd>BufferLineTogglePin<CR>", "Toggle pin" },
		f = { "<cmd>BufferLinePick<CR>", "Pick buffer" },
		["0"] = { "<cmd>BufferLineGoTo 0<CR>", "Go to buffer 0" },
		["1"] = { "<cmd>BufferLineGoTo 1<CR>", "Go to buffer 1" },
		["2"] = { "<cmd>BufferLineGoTo 2<CR>", "Go to buffer 2" },
		["3"] = { "<cmd>BufferLineGoTo 3<CR>", "Go to buffer 3" },
		["4"] = { "<cmd>BufferLineGoTo 4<CR>", "Go to buffer 4" },
		["5"] = { "<cmd>BufferLineGoTo 5<CR>", "Go to buffer 5" },
		["6"] = { "<cmd>BufferLineGoTo 6<CR>", "Go to buffer 6" },
		["7"] = { "<cmd>BufferLineGoTo 7<CR>", "Go to buffer 7" },
		["8"] = { "<cmd>BufferLineGoTo 8<CR>", "Go to buffer 8" },
		["9"] = { "<cmd>BufferLineGoTo 9<CR>", "Go to buffer 9" },
	},
}, { prefix = "<leader>" })

--  ╭──────────────────────────────────────────────────────────╮
--  │ Find                                                     │
--  ╰──────────────────────────────────────────────────────────╯

wk.register({
	f = {
		name = "Find",
		t = { "<cmd>TodoTelescope<CR>", "Todos" },
		f = { "<cmd>Telescope find_files<CR>", "Files" },
		g = { "<cmd>Telescope git_files<CR>", "Git files" },
		s = { "<cmd>Telescope tmux sessions<CR>", "Sessions" },
		w = { "<cmd>Telescope tmux windows<CR>", "Windows" },
		p = { "<cmd>Telescope project<CR>", "Projects" },
		m = { "<cmd>Telescope marks<CR>", "Marks" },
	},
}, { prefix = "<leader>" })

--  ╭──────────────────────────────────────────────────────────╮
--  │ Comments                                                 │
--  ╰──────────────────────────────────────────────────────────╯

local comments = require("Comment.api")

wk.register({
	["/"] = {
		name = "Comment",
		["/"] = {
			function()
				comments.toggle.linewise.current()
			end,
			"Line comment",
		},
		["?"] = {
			function()
				comments.toggle.blockwise.current()
			end,
			"Block comment",
		},
		j = {
			function()
				comments.insert.linewise.above()
			end,
			"Line comment above",
		},
		k = {
			function()
				comments.insert.linewise.below()
			end,
			"Line comment below",
		},
		l = {
			function()
				comments.insert.linewise.eol()
			end,
			"Line comment end",
		},
		J = {
			function()
				comments.insert.blockwise.above()
			end,
			"Block comment above",
		},
		K = {
			function()
				comments.insert.blockwise.below()
			end,
			"Block comment below",
		},
		L = {
			function()
				comments.insert.blockwise.eol()
			end,
			"Block comment end",
		},
		["m"] = {
			comments.call("toggle.linewise", "g@"),
			"Line comment motion",
			expr = true,
		},
		["M"] = {
			comments.call("toggle.blockwise", "g@"),
			"Block comment motion",
			expr = true,
		},
		b = {
			name = "Box",
			b = { "<cmd>CBlbox 1<CR>", "Border box", mode = { "n", "v" } },
			e = { "<cmd>CBcbox 18<CR>", "Enclosed box", mode = { "n", "v" } },
			q = { "<cmd>CBrbox 12<CR>", "Quote box", mode = { "n", "v" } },
			h = { "<cmd>CBrbox 20<CR>", "Header box", mode = { "n", "v" } },
			l = { "<cmd>CBlbox 2<CR>", "Line box", mode = { "n", "v" } },
		},
	},
}, { prefix = "<leader>" })

local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)

wk.register({
	["/"] = {
		name = "Comment",
		["/"] = {
			function()
				vim.api.nvim_feedkeys(esc, "nx", false)
				comments.toggle.linewise(vim.fn.visualmode())
			end,
			"Line comment",
		},
		["?"] = {
			function()
				vim.api.nvim_feedkeys(esc, "nx", false)
				comments.toggle.blockwise(vim.fn.visualmode())
			end,
			"Block comment",
		},
	},
}, { prefix = "<leader>", mode = { "v", "x" } })

--  ╭──────────────────────────────────────────────────────────╮
--  │ Marks                                                    │
--  ╰──────────────────────────────────────────────────────────╯

local marks = require("marks")

wk.register({
	["'"] = {
		"<cmd>WhichKey '<CR>",
		"Go to mark",
	},
	m = {
		name = "Marks",
		a = { marks.set, "Set mark" },
		A = { marks.set_next, "Set next mark" },
		d = { marks.delete, "Delete mark" },
		D = { marks.delete_line, "Delete line marks" },
		x = { marks.delete_buf, "Delete buf marks" },
		X = { "<cmd>delm! <bar> delm A-Z0-9<CR>", "Delete all marks" },
		n = { marks.next, "Next mark" },
		p = { marks.prev, "Previous mark" },
	},
})

--  ╭──────────────────────────────────────────────────────────╮
--  │ Annotation                                               │
--  ╰──────────────────────────────────────────────────────────╯

wk.register({
	n = {
		name = "Annotate",
		c = { "<cmd>Neogen class<CR>", "Class" },
		f = { "<cmd>Neogen func<CR>", "Function" },
		t = { "<cmd>Neogen type<CR>", "Type" },
		m = { "<cmd>Neogen file<CR>", "Module" },
	},
})

--  ╭──────────────────────────────────────────────────────────╮
--  │ LSP                                                      │
--  ╰──────────────────────────────────────────────────────────╯

local conform = require("conform")
local lint = require("lint")

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		wk.register({
			K = { vim.lsp.buf.hover, "LSP Hover", buffer = event.buf },
			g = {
				name = "Go To",
				d = { vim.lsp.buf.definition, "Go to definition", buffer = event.buf },
				D = { vim.lsp.buf.declaration, "Go to declaration", buffer = event.buf },
				i = { vim.lsp.buf.implementation, "Go to implementation", buffer = event.buf },
				t = { vim.lsp.buf.implementation, "Go to type definition", buffer = event.buf },
				r = { vim.lsp.buf.references, "Go to references", buffer = event.buf },
				s = { vim.lsp.buf.signature_help, "Go to signature", buffer = event.buf },
				p = { vim.diagnostic.open_float, "Open diagnostic float", buffer = event.buf },
				o = {
					name = "Go to Alternate",
					t = { "<cmd>A<CR>", "Toggle alternate" },
					h = { "<cmd>AS<CR>", "Horizontal split alternate" },
					v = { "<cmd>AV<CR>", "Vertical split alternate" },
					n = { "<cmd>AT<CR>", "New tab alternate" },
				},
			},
			["["] = {
				name = "Previous Diagnostic",
				d = { vim.diagnostic.goto_prev, "Previous diagnostic", buffer = event.buf },
			},
			["]"] = {
				name = "Next Diagnostic",
				d = { vim.diagnostic.goto_next, "Next diagnostic", buffer = event.buf },
			},
		})

		wk.register({
			a = { vim.lsp.buf.code_action, "Code action", buffer = event.buf },
			l = { lint.try_lint, "Lint", buffer = event.buf },
			p = {
				function()
					conform.format({
						async = false,
						lsp_fallback = true,
						timeout_ms = 1000,
					})
				end,
				"Format",
				buffer = event.buf,
			},
		}, { prefix = "<leader>" })
	end,
})

--  ╭──────────────────────────────────────────────────────────╮
--  │ Run                                                      │
--  ╰──────────────────────────────────────────────────────────╯

wk.register({
	R = {
		name = "Run",
		t = {
			name = "Run test",
			f = { "<cmd>Neotest run file<CR>", "Run current file" },
			c = { "<cmd>Neotest run<CR>", "Run under cursor" },
			l = { "<cmd>Neotest run last<CR>", "Run last test" },
		},
	},
}, { prefix = "<leader>" })

--  ╭──────────────────────────────────────────────────────────╮
--  │ Git                                                      │
--  ╰──────────────────────────────────────────────────────────╯

wk.register({
	g = {
		name = "Git",
		c = { "<cmd>Telescope gitmoji<CR>", "Commit" },
		b = { "<cmd>Telescope git_branches<CR>", "Branch" },
		s = { "<cmd>Telescope git_status<CR>", "Status" },
		h = { "<cmd>Telescope git_commits<CR>", "History" },
		H = { "<cmd>Telescope git_bcommits<CR>", "Buffer history" },
		d = { "<cmd>DiffviewOpen<CR>", "Diff" },
		g = { "<cmd>Neogit<CR>", "Interface" },
		p = {
			name = "Push",
			o = {
				"<cmd>!git push origin `git rev-parse --abbrev-ref HEAD`<CR> <BAR> <cmd>Neotree git_status focus left<CR>",
				"Git push origin current branch",
			},
		},
	},
}, { prefix = "<leader>" })

--  ╭──────────────────────────────────────────────────────────╮
--  │ Folds                                                    │
--  ╰──────────────────────────────────────────────────────────╯

local ufo = require("ufo")

wk.register({
	z = {
		name = "Folds",
		O = { ufo.openAllFolds, "Open all folds" },
		C = { ufo.closeAllFolds, "Close all folds" },
		K = {
			function()
				local winid = ufo.peekFoldedLinesUnderCursor()
				if not winid then
					vim.lsp.buf.hover()
				end
			end,
			"Peek Fold",
		},
	},
})

--  ╭──────────────────────────────────────────────────────────╮
--  │ Harpoon                                                  │
--  ╰──────────────────────────────────────────────────────────╯

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

wk.register({
	h = {
		name = "Harpoon",
		a = { mark.add_file, "Harpoon add file" },
		m = { ui.toggle_quick_menu, "Harpoon quick menu" },
		h = { ui.nav_prev, "Harpoon previous file" },
		l = { ui.nav_prev, "Harpoon next file" },
		["1"] = {
			function()
				ui.nav_file(1)
			end,
			"Harpoon go to 1",
		},
		["2"] = {
			function()
				ui.nav_file(2)
			end,
			"Harpoon go to 2",
		},
		["3"] = {
			function()
				ui.nav_file(3)
			end,
			"Harpoon go to 3",
		},
		["4"] = {
			function()
				ui.nav_file(4)
			end,
			"Harpoon go to 4",
		},
		["5"] = {
			function()
				ui.nav_file(5)
			end,
			"Harpoon go to 5",
		},
		["6"] = {
			function()
				ui.nav_file(6)
			end,
			"Harpoon go to 6",
		},
		["7"] = {
			function()
				ui.nav_file(7)
			end,
			"Harpoon go to 7",
		},
		["8"] = {
			function()
				ui.nav_file(8)
			end,
			"Harpoon go to 8",
		},
		["9"] = {
			function()
				ui.nav_file(9)
			end,
			"Harpoon go to 9",
		},
	},
}, { prefix = "<leader>" })

--  ╭──────────────────────────────────────────────────────────╮
--  │ Chat GPT                                                 │
--  ╰──────────────────────────────────────────────────────────╯

wk.register({
	c = {
		name = "ChatGPT",
		c = { "<cmd>ChatGPT<CR>", "ChatGPT prompt", mode = { "n" } },
		i = { "<cmd>ChatGPTActAs<CR>", "ChatGPT actor", mode = { "n" } },
		q = { "<cmd>ChatGPTCompleteCode<CR>", "ChatGPT code complete", mode = { "n" } },
		e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
		g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar correction", mode = { "n", "v" } },
		t = { "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
		k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
		d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
		a = { "<cmd>ChatGPTRun add_tests<CR>", "Add tests", mode = { "n", "v" } },
		o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize code", mode = { "n", "v" } },
		s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
		f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix bugs", mode = { "n", "v" } },
		x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain code", mode = { "n", "v" } },
		r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen edit", mode = { "n", "v" } },
		l = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code readability analysis", mode = { "n", "v" } },
	},
}, {
	prefix = "<leader>",
	mode = { "n", "v" },
})

--  ╭──────────────────────────────────────────────────────────╮
--  │ Obsidian                                                 │
--  ╰──────────────────────────────────────────────────────────╯

wk.register({
	o = {
		name = "Obsidian",
		w = {
			name = "Workspace",
			c = { "<cmd>ObsidianWorkspace<CR>", "Get current workspace" },
			e = { "<cmd>ObsidianWorkspace edgemesh<CR>", "Edgemsh workspace" },
			p = { "<cmd>ObsidianWorkspace personal<CR>", "Personal workspace" },
		},
		t = { "<cmd>ObsidianToday<CR>", "Obsidian today" },
		y = { "<cmd>ObsidianYesterday<CR>", "Obsidian yesterday" },
		s = { "<cmd>ObsidianSearch<CR>", "Obsidian search" },
		f = { "<cmd>ObsidanFollowLink<CR>", "Obsidian follow" },
		c = { "<cmd>ObsidanNew<CR>", "Obsidian new" },
		q = { "<cmd>ObsidianQuickSwitch<CR>", "Obsidian quick switch" },
	},
}, { prefix = "<leader>" })
