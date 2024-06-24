return {
	"tpope/vim-dadbod",
	event = "VeryLazy",
	opt = true,
	dependencies = {
		"kristijanhusak/vim-dadbod-ui",
		"kristijanhusak/vim-dadbod-completion",
	},
	config = function()
		require("zenoix.config.dadbod-config").setup()
	end,
}
