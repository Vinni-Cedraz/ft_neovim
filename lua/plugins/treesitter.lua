return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	priority = 1,
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "c", "markdown", "markdown_inline", "javascript", "dart" },
			ignore_install = { "" },
			sync_install = true,
			highlight = {
				enable = true,
				disable = { "css" },
				use_languagetree = true,
			},
			autopairs = {
				enable = true,
			},
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<S-p>", -- c here means C like in Ctrl
					node_incremental = "<S-p>",
				},
			},
		})
	end,
}
