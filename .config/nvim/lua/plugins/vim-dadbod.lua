return {
	"tpope/vim-dadbod",
	events = "lazy",
	cmd = { "DB", "DBUI", "DBUIToggle", "DBUIFindBuffer", "DBUIAddConnection" },
	opt = true,
	dependencies = {
		"kristijanhusak/vim-dadbod-ui",
		"kristijanhusak/vim-dadbod-completion",
	},
}
