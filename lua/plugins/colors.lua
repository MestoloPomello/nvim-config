-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme "catppuccin"
-- 	end
-- }
return {
	'navarasu/onedark.nvim',
	config = function()
		require('onedark').setup {
			style = 'warm'
		}
		require('onedark').load()
	end
}
