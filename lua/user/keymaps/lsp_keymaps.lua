Keymap("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", Opts) -- display available code actions
Keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", Opts) -- show diagnostic under cursor on a tiny float
Keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", Opts) -- lint current buffer
Keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", Opts) -- show documentation for thing under cursor
Keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", Opts)
Keymap("n", "<leader>j", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>", Opts) -- navigate diagnostics
Keymap("n", "<leader>k", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<CR>", Opts)
Keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", Opts) -- rename thing under cursor accross files

