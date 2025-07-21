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
			style = 'warmer'
		}
		require('onedark').load()
	end
}

-- return {
-- 	"bluz71/vim-moonfly-colors",
-- 	name = "moonfly",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme "moonfly"
-- 	end
-- }

-- return {
--     "slugbyte/lackluster.nvim",
--     lazy = false,
--     priority = 1000,
--     init = function()
--         -- vim.cmd.colorscheme("lackluster")
--         -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
--         vim.cmd.colorscheme("lackluster-mint")
--     end,
-- }
