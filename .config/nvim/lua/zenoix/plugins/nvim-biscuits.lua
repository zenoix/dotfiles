return {
	"code-biscuits/nvim-biscuits",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("nvim-biscuits").setup({ cursor_line_only = true })
	end,
}
