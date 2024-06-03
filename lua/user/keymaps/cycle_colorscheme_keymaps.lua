-- Alt + 1: Next colorscheme
vim.api.nvim_set_keymap(
	"n",
	"<M-1>",
	":lua require('core.colorscheme').Next_color_scheme()<CR> | :lua SetTransparentBackground()<CR>",
	{ noremap = true, silent = true }
)

-- Alt + 2: Previous colorscheme
vim.api.nvim_set_keymap(
	"n",
	"<M-2>",
	":lua require('core.colorscheme').Prev_color_scheme()<CR> | :lua SetTransparentBackground()<CR>",
	{ noremap = true, silent = true }
)
