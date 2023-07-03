return {
	"akinsho/flutter-tools.nvim",
	lazy = true,
	event = "FileType",
	ft = "dart",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	config = true,
}
