return {
	"nvim-telescope/telescope-fzf-native.nvim",
	-- NOTE: If you are having trouble with this installation,
	--       refer to the README for telescope-fzf-native for more instructions.
	build = "make",
	cond = function()
		return vim.fn.executable("make") == 1
	end,
}
