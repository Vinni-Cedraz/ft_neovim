-- load and use 42header plugin and norminetter:
Keymap("n", "<F1>", ":Lazy load 42header<CR> | :Stdheader<CR>")
Keymap("n", "<leader>h", ":Lazy load 42header<CR> <bar> :Stdheader<CR>") -- alternative 42header keymap
Keymap("n", "<leader>cf", ":Lazy load CFormatter42<CR> | :CFormatter42<CR>") -- alternative CFormatter42
Keymap("", "<Space>", "<Nop>", Opts) -- set leader key to space
-- Normal Mode jk
Keymap("i", "jk", "<ESC>", Opts)
-- Essentials
Keymap("n", "<S-w>", ":w<CR>", Opts) -- save current buffer
Keymap("n", "<S-x>", ":x<CR>", Opts) -- save and exit current buffer
Keymap("n", "<S-q>", ":q<cr>", Opts) -- quit floating window
Keymap("n", "<C-q>", ":qa!<cr>", Opts) -- quit all buffers without saving
Keymap("n", "rr", ":redo<CR>", Opts) -- redo
Keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/]], Opts) -- rename all instances of the thing under cursor on current buffer
-- Comment Code
Keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')
Keymap(
	"n",
	"<leader>/",
	":Lazy load Comment.nvim<CR> | <cmd>lua require('Comment.api').toggle.linewise.current()<CR>",
	Opts
)
