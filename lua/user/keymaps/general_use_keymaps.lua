Keymap = vim.keymap.set
Opts = { silent = true }

-- load and use 42header plugin and norminetter:
Keymap("n", "<F1>", ":Lazy load 42header<CR> | :Stdheader<CR>")

-- set leader key to space
Keymap("", "<Space>", "<Nop>", Opts)

-- Normal Mode jk
Keymap("i", "jk", "<ESC>", Opts)
Keymap("i", "kj", "<ESC>", Opts)

-- Essentials
Keymap("n", "<S-w>", ":w<CR>", Opts)
Keymap("n", "<S-x>", ":x<CR>", Opts)
Keymap("n", "<leader>r", ":redo<CR>", Opts)
-- map replace mode to <C-r>
Keymap("n", "<C-q>", ":qa!<cr>", Opts)
Keymap("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", Opts) -- code action

-- Comment Code
Keymap(
	"n",
	"<leader>/",
	":Lazy load Comment.nvim<CR> | <cmd>lua require('Comment.api').toggle.linewise.current()<CR>",
	Opts
)

Keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- Floaterm
Keymap(
	"n",
	"<leader>ft",
	":FloatermNew --height=0.6 --width=0.4 --wintype=float --position=topleft --cwd=<buffer><CR>",
	Opts
)

Keymap(
	"n",
	"<leader>cc",
	":FloatermNew --autoclose=0 cc -g -Wall -Wextra -Werror -fsanitize=address -lm % -o %< && ./%< <CR>",
	Opts
)

Keymap("n", "<leader>j", ":%!prettier --stdin-filepath %<CR>", Opts)
Keymap("n", "<leader>js", ":FloatermNew --autoclose=0 node %< <CR>", Opts)

-- Telescope
Keymap("n", "<leader>ff", ":Lazy load telescope-fzf-native.nvim<CR> | :Telescope find_files<CR>", Opts)
Keymap("n", "<leader>fh", ":Telescope find_files cwd=~/ <CR>", Opts)
Keymap("n", "<leader>fr", ":Telescope find_files cwd=/ <CR>", Opts)
Keymap("n", "<leader>fp", ":Telescope projects<CR>", Opts)
Keymap("n", "<leader>lg", ":Telescope live_grep<CR>", Opts)
Keymap("n", "<leader>S", function()
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "Fuzzily [S]earch in current buffer" })
Keymap("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
Keymap("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
Keymap("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

-- Copillot
Keymap("i", "CP", "<ESC><CMD>:Copilot panel<CR>", Opts)
Keymap("n", "<leader>cp", "<CMD>:Copilot toggle<CR> | <CMD>:Copilot status<CR>", Opts)

-- Blackhole register
Keymap("v", "p", '"_dP', Opts)
Keymap("n", "x", '"_x')
