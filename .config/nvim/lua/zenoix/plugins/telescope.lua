return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	-- or                            , branch = '0.1.x',
	dependencies = { { "nvim-lua/plenary.nvim" } },
	opts = {
		defaults = {
			prompt_prefix = " ",
			path_display = { "smart" },
			dynamic_preview_title = true,
			sorting_strategy = "ascending",
			layout_config = {
				prompt_position = "bottom",
				height = 0.95,
			},
			mappings = {
				n = {
					["q"] = "close",
					["l"] = "select_default",
				},
			},
		},
		file_ignore_patterns = {
			"lazy-lock.json",
		},
		pickers = {
			find_files = {
				hidden = true,
			},
			oldfiles = {
				initial_mode = "normal",
			},
		},
	},
	config = function(_, opts)
		require("telescope").setup(opts)
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
	end,
}
