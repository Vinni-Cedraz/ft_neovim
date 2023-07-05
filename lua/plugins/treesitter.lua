return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	priority = 1,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "c", "markdown", "markdown_inline", "javascript", "dart" },
			ignore_install = { "" },
			sync_install = true,
			highlight = {
				enable = true,
				use_languagetree = true,
			},
			autopairs = {
				enable = true,
			},
		})
	end,
}
