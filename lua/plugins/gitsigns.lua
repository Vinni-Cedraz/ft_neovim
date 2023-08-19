return {
	-- Adds git releated signs to the gutter, as well as utilities for managing change
	"lewis6991/gitsigns.nvim",
	opts = {
		-- See `:help gitsigns.txt`
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "-" },
			changedelete = { text = "-" },
		},
	},
}
