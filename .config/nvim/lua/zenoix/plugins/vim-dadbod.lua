return {
	"tpope/vim-dadbod",
	cmd = { "DB", "DBUI", "DBUIToggle", "DBUIFindBuffer", "DBUIAddConnection" },
	opt = true,
	dependencies = {
		"kristijanhusak/vim-dadbod-ui",
		"kristijanhusak/vim-dadbod-completion",
	},
	config = function()
		require("zenoix.config.dadbod-config").setup()
	end,
}
