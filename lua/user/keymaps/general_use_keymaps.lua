-- the <leader> key is space
Keymap("", "<Space>", "<Nop>", Opts)
-- jk is a shortcut for the normal mode when you're in insert mode
Keymap("i", "jk", "<ESC>", Opts)
-- runs norminette on the current buffer (for diagnostics)
Keymap("n", "norm", "<CMD>!norminette %<CR>", Opts);
-- the f1 key will write the 42 header:
Keymap("n", "<F1>", ":Lazy load 42header<CR> | :Stdheader<CR>")
-- alternatively you can do the same with <leader>h (Space + h)
Keymap("n", "<leader>h", ":Lazy load 42header<CR> <bar> :Stdheader<CR>")
-- f2 will format the code according to the Norme
Keymap("n", "<F2>", ":Lazy load CFormatter42<CR> | :CFormatter42<CR>")
-- Essentials
Keymap("n", "<S-w>", ":w<CR>", Opts)                    -- save current buffer
Keymap("n", "<S-x>", ":x<CR>", Opts)                    -- save and exit current buffer
Keymap("n", "<S-q>", ":q<cr>", Opts)                    -- quit floating window
Keymap("n", "<C-q>", ":qa!<cr>", Opts)                  -- quit all buffers without saving
Keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], Opts) -- rename all instances of the thing under cursor on current buffer
-- Comment Code
Keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')
Keymap(
	"n",
	"<leader>/",
	":Lazy load Comment.nvim<CR> | <cmd>lua require('Comment.api').toggle.linewise.current()<CR>",
	Opts
)
-- opens the history of undos for the current file
-- It doesn't matter if you closed the file before,
-- it persists until you move it, rename it or delete it):
Keymap("n", "<F3>", ":UndotreeToggle<CR>", Opts)
-- Opens the file explorer (nvim-tree):
Keymap("n", "<leader>e", ":NvimTreeToggle<CR>", Opts)

-- Character Manipulation
-- "<C-a>" -- Increments value in cursor
-- "<C-x>" -- Decrements value in cursor

