Keymap = vim.keymap.set
Opts = { silent = true }

-- set leader key to space
Keymap("", "<Space>", "<Nop>", Opts)

-- Normal Mode jk
Keymap("i", "jk", "<ESC>", Opts)
Keymap("i", "kj", "<ESC>", Opts)

-- Essentials
Keymap("n", "<S-w>", ":w<CR>", Opts)
Keymap("n", "<S-x>", ":x<CR>", Opts)
Keymap("n", "<S-r>", ":redo<CR>", Opts)
Keymap("n", "<C-q>", ":qa!<cr>", Opts)
Keymap("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", Opts) -- code action
Keymap("n", "<F3>", ":UndotreeToggle<CR>", Opts)

-- Comment Code
Keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", Opts)
Keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- Floaterm
Keymap(
	"n",
	"<leader>ft",
	":FloatermNew --height=0.6 --width=0.4 --wintype=float --position=topleft --cwd=<buffer><CR>",
	Opts
)
Keymap("n", "<leader>cc", ":FloatermNew --autoclose=0 cc -g -Wall -Wextra -Werror -fsanitize=address -lm % -o %< && ./%< <CR>", Opts)

-- Telescope
Keymap("n", "<leader>fh", ":Telescope find_files cwd=~/ <CR>", Opts)
Keymap("n", "<leader>fr", ":Telescope find_files cwd=/ <CR>", Opts)
Keymap("n", "<leader>ff", ":Telescope find_files<CR>", Opts)
Keymap("n", "<leader>fp", ":Telescope projects<CR>", Opts)
Keymap("n", "<leader>lg", ":Telescope live_grep<CR>", Opts)

-- Copillot
Keymap("i", "CP", "<ESC><CMD>:Copilot panel<CR>", Opts)
Keymap("n", "<ESC>", "<CMD>:Copilot toggle<CR>", Opts)

-- Blackhole register
Keymap("v", "p", '"_dP', Opts)
Keymap("n", "x", '"_x')
