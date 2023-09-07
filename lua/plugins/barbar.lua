return {
	{
		"romgrk/barbar.nvim",
		dependencies = { "lewis6991/gitsigns.nvim" },
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			auto_hide = true,
			letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",
			clickable = true,
			gitsigns = {
				added = { enabled = true, icon = "+" },
				changed = { enabled = true, icon = "~" },
				deleted = { enabled = true, icon = "-" },
			},
			sidebar_filetypes = {
				NvimTree = { text = "NvimTree" },
				undotree = { text = "Undotree" },
			},
		},
		event = "VeryLazy"
	},
}
