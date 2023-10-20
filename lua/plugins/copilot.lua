return {
	"zbirenbaum/copilot.lua",

	-- these two here means copilot will only be start once the user enters the :Copilot status command
	lazy = true,
	cmd = "Copilot",
	-- either manually or through the <leader>cp keymap

	config = function()
		require("copilot").setup({
			suggestion = { enabled = false},
			panel = { enabled = false},
			plugin_manager_path = vim.call("stdpath", "data"),
		})
	end,
}
