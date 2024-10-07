vim.cmd("set autoindent")
vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
-- vim.cmd("set ignorecase")
-- vim.cmd("set smartcase")
vim.g.mapleader = " "

-- Commands
vim.keymap.set("n", "<leader>rs", vim.lsp.buf.rename, {})
