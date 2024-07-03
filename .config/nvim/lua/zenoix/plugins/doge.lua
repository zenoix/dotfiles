return {
	"kkoomen/vim-doge",
	event = { "BufReadPre", "BufNewFile" },
	build = function()
		vim.cmd([[call doge#install()]])
	end,
}
