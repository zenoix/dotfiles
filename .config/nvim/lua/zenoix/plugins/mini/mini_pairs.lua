return {
	"echasnovski/mini.pairs",
	event = "VeryLazy",
	opts = {
		mappings = {
			["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\`].", register = { cr = false } },
		},
	},
	keys = {
		{
			"<leader>up",
			function()
				vim.g.minipairs_disable = not vim.g.minipairs_disable
			end,
			desc = "Toggle Auto Pairs",
		},
	},
}
