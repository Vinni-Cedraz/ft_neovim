return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		opts = {
			debug = true, -- Enable debugging
			model = 'claude-3.5-sonnet', -- 'gpt-3.5-turbo' or 'gpt-4'
			temperature = 0.1,
		},
	}
}
