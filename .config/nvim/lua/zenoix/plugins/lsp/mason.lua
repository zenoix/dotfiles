return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")

		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			log_level = vim.log.levels.DEBUG,
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"basedpyright",
				"bashls",
				"gopls",
				"marksman",
				"lua_ls",
				"r_language_server",
				"ruff",
				"taplo",
			},

			automatic_installation = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"beautysh",
				"goimports-reviser",
				"hadolint",
				"prettier",
				"stylua",
			},
		})
	end,
}
