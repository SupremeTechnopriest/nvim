return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "bufreadpost", "bufnewfile" },
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = true,
			ignore_install = {},
			modules = {},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"bash",
				"c",
				"html",
				"css",
				"javascript",
				"jsdoc",
				"json",
				"lua",
				"luadoc",
				"luap",
				"markdown",
				"markdown_inline",
				"query",
				"regex",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
				"zig",
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["as"] = { query = "@scope", desc = "Select scope" },
						["av"] = { query = "@assignment.outer", desc = "Select around assignment" },
						["iv"] = { query = "@assignment.inner", desc = "Select inside assignment" },
						["vh"] = { query = "@assignment.lhs", desc = "Select left hand assignment" },
						["vl"] = { query = "@assignment.rhs", desc = "Select right hand assignment" },
						["af"] = { query = "@function.outer", desc = "Select around function" },
						["if"] = { query = "@function.inner", desc = "Select inside function" },
						["ai"] = { query = "@conditional.outer", desc = "Select around conditional" },
						["ii"] = { query = "@conditional.inner", desc = "Select inside conditional" },
						["aa"] = { query = "@parameter.outer", desc = "Select around parameter" },
						["ia"] = { query = "@parameter.inner", desc = "Select inside parameter" },
						["ac"] = { query = "@class.outer", desc = "Select around class" },
						["ic"] = { query = "@class.inner", desc = "Select inside class" },
						["al"] = { query = "@loop.outer", desc = "Select around loop" },
						["il"] = { query = "@loop.inner", desc = "Select inside loop" },
					},
					selection_modes = {
						["@scope"] = "V",
						["@function.outer"] = "V",
						["@function.inner"] = "V",
						["@class.inner"] = "V",
						["@class.outer"] = "V",
						["@loop.inner"] = "V",
						["@loop.outer"] = "V",
					},
				},
				move = {
					enable = true,
					set_jumps = true,
					goto_next_start = {
						["]f"] = { query = "@function.outer", desc = "Next function start" },
						["]v"] = { query = "@assignment.outer", desc = "Next assignment start" },
						["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
						["]a"] = { query = "@parameter.outer", desc = "Next parameter start" },
						["]c"] = { query = "@class.outer", desc = "Next class start" },
						["]l"] = { query = "@loop.outer", desc = "Next loop start" },
					},
					goto_next_end = {
						["]F"] = { query = "@function.outer", desc = "Next function end" },
						["]V"] = { query = "@assignment.outer", desc = "Next assignment end" },
						["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
						["]A"] = { query = "@parameter.outer", desc = "Next parameter end" },
						["]C"] = { query = "@class.outer", desc = "Next class end" },
						["]L"] = { query = "@loop.outer", desc = "Next loop end" },
					},
					goto_previous_start = {
						["[f"] = { query = "@function.outer", desc = "Previous function start" },
						["[v"] = { query = "@assignment.outer", desc = "Previous assignment start" },
						["[i"] = { query = "@conditional.outer", desc = "Previous conditional start" },
						["[a"] = { query = "@parameter.outer", desc = "Previous parameter start" },
						["[c"] = { query = "@class.outer", desc = "Previous class start" },
						["[l"] = { query = "@loop.outer", desc = "Previous loop start" },
					},
					goto_previous_end = {
						["[F"] = { query = "@function.outer", desc = "Previous function end" },
						["[V"] = { query = "@assignment.outer", desc = "Previous assignment end" },
						["[I"] = { query = "@conditional.outer", desc = "Previous conditional end" },
						["[A"] = { query = "@parameter.outer", desc = "Previous parameter end" },
						["[C"] = { query = "@class.outer", desc = "Previous class end" },
						["[L"] = { query = "@loop.outer", desc = "Previous loop end" },
					},
				},
				swap = {
					enable = false,
				},
			},
		})
	end,
}
