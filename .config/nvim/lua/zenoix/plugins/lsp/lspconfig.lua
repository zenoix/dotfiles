return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"ray-x/lsp_signature.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")

		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local keymap = vim.keymap

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				vim.bo[ev.buf].omnifunc = nil

				local opts = { buffer = ev.buf }
				keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				keymap.set("n", "K", vim.lsp.buf.hover, opts)
				keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
				keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
				keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

				require("lsp_signature").on_attach({
					bind = true,
					close_timeout = 4000,
					hint_prefix = " ",
					handler_opts = {
						border = "rounded",
					},
					timer_interval = 100,
				}, ev.buf)
			end,
		})

		local capabilities = cmp_nvim_lsp.default_capabilities()

		-- Change the Diagnostic symbols in the sign column (gutter)
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		lspconfig.ansiblels.setup({
			capabilities = capabilities,
		})

		lspconfig.bashls.setup({
			capabilities = capabilities,
		})

		lspconfig.jedi_language_server.setup({
			capabilities = capabilities,
		})

		lspconfig.golangci_lint_ls.setup({
			capabilities = capabilities,
			filetypes = { "go", "gomod", "gowork", "gotmpl" },
		})

		lspconfig.gopls.setup({
			capabilities = capabilities,
		})

		lspconfig.r_language_server.setup({
			capabilities = capabilities,
		})

		lspconfig.ruff.setup({
			capabilities = capabilities,
			init_options = {
				settings = {
					args = {},
				},
			},
		})

		lspconfig.marksman.setup({
			capabilities = capabilities,
		})

		lspconfig.taplo.setup({
			capabilities = capabilities,
		})

		lspconfig.typos_lsp.setup({
			capabilities = capabilities,
		})

		-- configure lua server (with special settings)
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = { -- custom settings for lua
				Lua = {
					-- make the language server recognize "vim" global
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						-- make language server aware of runtime files
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})
	end,
}
