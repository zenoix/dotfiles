return {
	"tpope/vim-dadbod",
	opt = true,
	dependencies = {
		"kristijanhusak/vim-dadbod-ui",
		"kristijanhusak/vim-dadbod-completion",
	},
	config = function()
		require("zenoix.config.dadbod-config").setup()
	end,
}
