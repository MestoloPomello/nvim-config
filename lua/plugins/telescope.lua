return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
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
			-- Part of the path_display workaround
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "TelescopeResults",
				callback = function(ctx)
					vim.api.nvim_buf_call(ctx.buf, function()
						vim.fn.matchadd("TelescopeParent", "\t\t.*$")
						vim.api.nvim_set_hl(0, "TelescopeParent", { link = "Comment" })
					end)
				end,
			})

			-- Part of the path_display workaround
			local function filenameFirst(_, path)
				local tail = vim.fs.basename(path)
				local parent = vim.fs.dirname(path)
				if parent == "." then return tail end
				return string.format("%s\t\t%s", tail, parent)
			end

			require("telescope").setup({
				defaults = {
					layout_strategy = "vertical",
					-- path_display = { "filename_first" } -- Uncomment when it starts working
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
				pickers = { -- Part of the path_display workaround
					find_files = {
						path_display = filenameFirst,
					}
				}
			})
			require("telescope").load_extension("ui-select")
			-- require("telescope").load_extension("projects")
			-- require'telescope'.extensions.projects.projects{}
		end
	}
}
