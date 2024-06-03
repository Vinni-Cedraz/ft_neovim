-- DAP (Debug Adapter Protocol) keymaps:

-- F5 sets a breakpoint:
Keymap("n", "<F5>", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", Opts)
-- F6 continues to the next break point
Keymap("n", "<F6>", "<cmd>lua require'dap'.continue()<cr>", Opts)
-- F4 step out:
Keymap("n", "<F4>", "<cmd>lua require'dap'.step_out()<cr>", Opts)
Keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", Opts)
Keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", Opts)
Keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", Opts)
Keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", Opts)
Keymap("n", "<F7>", ':lua require"dap".step_over()<CR>', Opts)
Keymap("n", "<F8>", ':lua require"dap".step_into()<CR>', Opts)
