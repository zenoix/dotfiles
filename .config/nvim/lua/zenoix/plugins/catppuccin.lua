return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
		})
		vim.cmd("colorscheme catppuccin")
	end,
	opts = {
		integrations = {
			aerial = true,
			alpha = true,
			cmp = true,
			dashboard = true,
			dap_ui = true,
			flash = true,
			gitsigns = true,
			harpoon = true,
			headlines = true,
			illuminate = true,
			indent_blankline = { enabled = true, scope_color = "mauve" },
			leap = true,
			lsp_trouble = true,
			mason = true,
			markdown = true,
			mini = {
				enabled = true,
				indentscope_color = "",
			},
			native_lsp = {
				enabled = true,
				underlines = {
					errors = { "undercurl" },
					hints = { "undercurl" },
					warnings = { "undercurl" },
					information = { "undercurl" },
				},
			},
			navic = { enabled = true, custom_bg = "lualine" },
			neotest = true,
			neotree = true,
			noice = true,
			notify = true,
			semantic_tokens = true,
			telescope = true,
			treesitter = true,
			treesitter_context = true,
			which_key = true,
		},
	},
}
