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
			model = "gpt-4-0125-preview", -- example: 'gpt-4' or 'claude-3.5-sonnet'
			temperature = 0.1,
		},
	},
}
