return {
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set('n', '<C-p>', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function ()
			require("telescope").setup({
				defaults = {
					layout_strategy = "vertical",
					path_display = { "filename_first" }
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
						}
					}
				},
				file_ignore_patterns = {
					"^node%_modules/.*"
				},
			})
			require("telescope").load_extension("ui-select")
			-- require("telescope").load_extension("projects")
			-- require'telescope'.extensions.projects.projects{}
		end
	}
}
