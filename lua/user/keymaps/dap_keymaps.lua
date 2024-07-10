-- DAP (Debug Adapter Protocol) keymaps:

-- F5 sets a breakpoint:
Keymap("n", "<F5>", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", Opts)
-- F6 continues to the next break point
Keymap("n", "<F6>", "<cmd>lua require'dap'.continue()<cr>", Opts)
-- F7 goes to the next line
Keymap("n", "<F7>", ':lua require"dap".step_over()<CR>', Opts)
-- F8 steps into a function
Keymap("n", "<F8>", ':lua require"dap".step_into()<CR>', Opts)
-- F4 steps out of a function:
Keymap("n", "<F4>", "<cmd>lua require'dap'.step_out()<cr>", Opts)
