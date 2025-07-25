return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
		theme = "hyper",
		config = {
			-- https://patorjk.com/software/taag/#p=testall&f=Big&t=PORCA%20TROIA
			-- header = {
			-- 	"▗▄▄▖  ▗▄▖ ▗▄▄▖  ▗▄▄▖ ▗▄▖     ▗▄▄▄▖▗▄▄▖  ▗▄▖ ▗▄▄▄▖ ▗▄▖ ",
			-- 	"▐▌ ▐▌▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌      █  ▐▌ ▐▌▐▌ ▐▌  █  ▐▌ ▐▌",
			-- 	"▐▛▀▘ ▐▌ ▐▌▐▛▀▚▖▐▌   ▐▛▀▜▌      █  ▐▛▀▚▖▐▌ ▐▌  █  ▐▛▀▜▌",
			-- 	"▐▌   ▝▚▄▞▘▐▌ ▐▌▝▚▄▄▖▐▌ ▐▌      █  ▐▌ ▐▌▝▚▄▞▘▗▄█▄▖▐▌ ▐▌",
			-- 	"",
			-- 	"",
			-- 	"\"Se caghi pisci, ma se pisci non è detto che caghi.\"",
			-- 	"",
			-- 	""
			-- }
			header = {
				"███    ██ ███████  ██████  ██    ██ ██ ███    ███ ",
				"████   ██ ██      ██    ██ ██    ██ ██ ████  ████ ",
				"██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██ ",
				"██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██ ",
				"██   ████ ███████  ██████    ████   ██ ██      ██ ",
				"",
				""
			}
		}
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
