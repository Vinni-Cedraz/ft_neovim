return {
	"zbirenbaum/copilot.lua",
	lazy = true,
	event = "InsertCharPre",
	cmd = "Copilot status",
	config = function()
		require("copilot").setup({
			filetypes = { "lua", "c", "javascript", "typescript", "rust", "python" },
			suggestion = { enabled = false },
			panel = { enabled = false },
			plugin_manager_path = vim.call("stdpath", "data"),
		})
	end,
}
