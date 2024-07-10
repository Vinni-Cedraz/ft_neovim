-- displays available code actions
Keymap("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", Opts)
-- show diagnostic under cursor on a tiny float
Keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", Opts)
-- runs a linter on the current buffer
Keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", Opts)
-- shows documentation for the thing under the cursor
Keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", Opts)
-- shows other places in the project where the thing under the cursor is also mentioned
Keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", Opts)
-- goes to the next diagnostic in the file
Keymap("n", "<leader>j", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>", Opts)
-- goes to the previous diagnostic in the file
Keymap("n", "<leader>k", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<CR>", Opts)
-- renames the thing under the cursor accross files
Keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", Opts)
