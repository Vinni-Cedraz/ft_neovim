return {
	"Vinni-Cedraz/groq-chat.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local api_key = vim.fn.getenv("GROQ_API_KEY")
		if not api_key or api_key == "" then
			error("GROQ_API_KEY environment variable is not set")
		end

		require("groq-chat").setup({
			api_key = api_key, -- Required
			model = "gemma2-9b-it", -- Optional, default: "gemma2-9b-it"
			window_width = 80, -- Optional, default: 80
		})
	end,
}
