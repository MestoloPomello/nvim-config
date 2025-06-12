return {
	{
		"mason-org/mason.nvim",
		opts = {
			PATH = "prepend"
		}
		-- config = function ()
		-- 	require("mason").setup({
		-- 		PATH = "prepend"
		-- 	})
		-- end
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
		opts = {
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"pylsp"
			}
		}
		-- config = function ()
		-- 	require("mason-lspconfig").setup({
		-- 		ensure_installed = {
		-- 			"lua_ls",
		-- 			"ts_ls",
		-- 			"pylsp"
		-- 		}
		-- 	})
		-- end
	},
	{
		"neovim/nvim-lspconfig",
		config = function ()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities
			})
			lspconfig.pylsp.setup({
				capabilities = capabilities
			})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}

