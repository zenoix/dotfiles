return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		Header = {
			"                               ",
			"                               ",
			"       ▄▀▀▀▀▀▀▀▀▀▀▄▄           ",
			"     ▄▀▀░░░░░░░░░░░░░▀▄        ",
			"   ▄▀░░░░░░░░░░░░░░░░░░▀▄      ",
			"   █░░░░░░░░░░░░░░░░░░░░░▀▄    ",
			"  ▐▌░░░░░░░░▄▄▄▄▄▄▄░░░░░░░▐▌   ",
			"  █░░░░░░░░░░░▄▄▄▄░░▀▀▀▀▀░░█   ",
			" ▐▌░░░░░░░▀▀▀▀░░░░░▀▀▀▀▀░░░▐▌  ",
			" █░░░░░░░░░▄▄▀▀▀▀▀░░░░▀▀▀▀▄░█  ",
			" █░░░░░░░░░░░░░░░░▀░░░▐░░░░░▐▌ ",
			" ▐▌░░░░░░░░░▐▀▀██▄░░░░░░▄▄▄░▐▌ ",
			"  █░░░░░░░░░░░▀▀▀░░░░░░▀▀██░░█ ",
			"  ▐▌░░░░▄░░░░░░░░░░░░░▌░░░░░░█ ",
			"   ▐▌░░▐░░░░░░░░░░░░░░▀▄░░░░░█ ",
			"    █░░░▌░░░░░░░░▐▀░░░░▄▀░░░▐▌ ",
			"    ▐▌░░▀▄░░░░░░░░▀░▀░▀▀░░░▄▀  ",
			"    ▐▌░░▐▀▄░░░░░░░░░░░░░░░░█   ",
			"    ▐▌░░░▌░▀▄░░░░▀▀▀▀▀▀░░░█    ",
			"    █░░░▀░░░░▀▄░░░░░░░░░░▄▀    ",
			"   ▐▌░░░░░░░░░░▀▄░░░░░░▄▀      ",
			"  ▄▀░░░▄▀░░░░░░░░▀▀▀▀█▀        ",
			" ▀░░░▄▀░░░░░░░░░░▀░░░▀▀▀▀▄▄▄▄▄ ",
			"                               ",
			"                               ",
		}

		require("alpha.term")

		local dynamic_header = {
			type = "terminal",
			command = "chafa -c full --fg-only --symbols braille ~/dotfiles/.config/nvim/static/spirited.gif",
			width = 70,
			height = 20,
			opts = {
				position = "center",
				redraw = true,
				window_config = {},
			},
		}

		local text_header = {
			type = "text",
			val = Header,
			opts = {
				position = "center",
				hl = "Type",
			},
		}

		-- local default_header = nil
		-- local ret = "command -v chafa"

		-- if ret == 0 then
		-- 	default_header = dynamic_header
		-- else
		-- 	default_header = text_header
		-- end

		local buttons = {
			type = "group",
			val = {
				dashboard.button("n", "  New File    ", ":ene <BAR> startinsert <CR>"),
				dashboard.button("f", "  Find File   ", ":Telescope find_files<CR>"),
				dashboard.button("t", "  Find Text   ", ":Telescope live_grep<CR>"),
				dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
				dashboard.button(
					"c",
					"  Nvim Config ",
					":cd $HOME/dotfiles/.config/nvim | Telescope find_files<CR>"
				),
				dashboard.button("q", "  Quit        ", ":qa<CR>"),
			},
			opts = {
				spacing = 1,
			},
		}

		Footer = {
			"                ",
			"It is what it is",
			"                ",
		}

		local footer = {
			type = "text",
			val = Footer,
			opts = {
				position = "center",
				hl = "Number",
			},
		}

		local section = {
			header = dynamic_header,
			buttons = buttons,
			footer = footer,
		}

		local opts = {
			layout = {
				{ type = "padding", val = 4 },
				section.header,
				{ type = "padding", val = 1 },
				section.buttons,
				{ type = "padding", val = 1 },
				section.footer,
				{ type = "padding", val = 4 },
			},
			opts = {
				margin = 3,
				noautocmd = true,
				redraw_on_resize = true,
			},
		}

		dashboard.opts = opts
		-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}