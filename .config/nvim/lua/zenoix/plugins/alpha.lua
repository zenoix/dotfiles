return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
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

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New File    ", ":enew<CR>"),
			dashboard.button("f", "  Find File   ", ":Telescope find_files<CR>"),
			dashboard.button("t", "  Find Text   ", ":Telescope live_grep<CR>"),
			-- dashboard.button("c", "  Nvim Config ", ":Dotfiles<CR>"),
			dashboard.button("q", "  Quit        ", ":qa<CR>"),
		}

		dashboard.section.footer.val = {
			"                ",
			"It is what it is",
			"                ",
		}

		alpha.setup(dashboard.opts)

		require("alpha").setup(require("alpha.themes.dashboard").config)
	end,
}
