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
				"ansiblels",
				"basedpyright",
				"bashls",
				"dockerls",
				"golangci_lint_ls",
				"gopls",
				"jedi_language_server",
				"lua_ls",
				"marksman",
				"r_language_server",
				"ruff",
				"taplo",
				"typos_lsp",
			},

			automatic_installation = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"ansible-lint",
				"beautysh",
				"debugpy",
				"goimports-reviser",
				"golangci-lint",
				"hadolint",
				"prettier",
				"stylua",
			},
		})
	end,
}
