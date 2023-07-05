-- Define the keymap to cycle forward through the available color schemes
vim.api.nvim_set_keymap(
	"n",
	"<M-1>",
	":lua require('core.colorscheme').Next_color_scheme()<CR> | :lua SetTransparentBackground()<CR>",
	{ noremap = true, silent = true }
)

-- Define the keymap to cycle backwards through the available color schemes
vim.api.nvim_set_keymap(
	"n",
	"<M-2>",
	":lua require('core.colorscheme').Prev_color_scheme()<CR> | :lua SetTransparentBackground()<CR>",
	{ noremap = true, silent = true }
)
