return {
	{
		"williamboman/mason.nvim",
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
		"williamboman/mason-lspconfig.nvim",
		config = function ()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "jdtls" }
			})
		end
	},
	{
		"nvim-java/nvim-java",
		config = function ()
			require("java").setup()
		end
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
			lspconfig.jdtls.setup({})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}

