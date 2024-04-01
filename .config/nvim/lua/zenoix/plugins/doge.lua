return {
	"kkoomen/vim-doge",
	event = "BufRead",
	config = function()
		vim.cmd([[call doge#install()]])
	end,
}
