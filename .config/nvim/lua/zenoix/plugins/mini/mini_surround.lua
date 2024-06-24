return {
	"echasnovski/mini.surround",
	event = { "BufReadPre", "BufNewFile" },
	version = false,
	config = function()
		require("mini.surround").setup()
	end,
}
