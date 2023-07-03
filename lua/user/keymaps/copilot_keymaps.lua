-- Copilot
Keymap("i", "CP", "<ESC><CMD>:Copilot panel<CR>", Opts)
Keymap("n", "<leader>cp", ":execute ':Copilot' | execute ':Copilot toggle' | execute ':echo \"wait for it...\"' | execute ':Copilot status'<CR>", Opts)
