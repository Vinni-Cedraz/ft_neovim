return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	priority = 1,
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "c", "bash", "markdown", "markdown_inline", "javascript" },
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
		})
	end,
}
