-- remember to authenticate with :Copilot auth first
-- PLUGINS BEING USED HERE ARE "nvim-copilot" and "nvim-copilot-chat",
-- to create new keymaps, read their documentation to call their functions

-- On normal mode, <leader>cp activates copilot
Keymap(
	"n",
	"<leader>cp",
	":execute ':Copilot' | execute ':Copilot toggle' | execute ':echo \"wait for it...\"' | execute ':Copilot status'<CR>",
	Opts
)
-- On insert mode, "CP" will open the suggestions on a split window (copilot panel)
Keymap("i", "CP", "<ESC><CMD>:Copilot panel<CR>", Opts)
-- On visual mode, "gpt" will open a copilot CHAT on a vertical split window with the selected code as input
Keymap("v", "gpt", "<ESC><CMD>:CopilotChatToggle<CR>", Opts)
