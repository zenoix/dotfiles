return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	event = "VeryLazy",
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
				"bashls",
				"golangci_lint_ls",
				"gopls",
				"jedi_language_server",
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
				"golangci-lint",
				"hadolint",
				"prettier",
				"stylua",
			},
		})
	end,
}
