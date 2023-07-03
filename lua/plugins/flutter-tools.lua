return {
	"akinsho/flutter-tools.nvim",
	lazy = true,
	event = "BufRead",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	config = true,
}
