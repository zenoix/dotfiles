return {
	"mfussenegger/nvim-ansible",
	config = function()
		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = {
				"*/pre_tasks/*.yml",
				"*/pre_tasks/*.yaml",
				"*/post_tasks/*.yml",
				"*/post_tasks/*.yaml",

				-- My ansible environment
				"/home/**/walnut-environment/main.yaml",
			},
			callback = function()
				vim.bo.filetype = "yaml.ansible"
			end,
		})
	end,
}
