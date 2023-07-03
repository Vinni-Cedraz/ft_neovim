-- Telescope
Keymap("n", "<leader>ff", ":Lazy load telescope-fzf-native.nvim<CR> | :Telescope find_files<CR>", Opts)
Keymap("n", "<leader>fh", ":Telescope find_files cwd=~/ <CR>", Opts)
Keymap("n", "<leader>fr", ":Telescope find_files cwd=/ <CR>", Opts)
Keymap("n", "<leader>fp", ":Telescope projects<CR>", Opts)
Keymap("n", "<leader>lg", ":Telescope live_grep<CR>", Opts)
Keymap("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
Keymap("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
Keymap("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

-- Fuzzy finds in the current buffer, its likle a '/' but it's more fun
Keymap("n", "<leader>S", function()
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "Fuzzily [S]earch in current buffer" })
