return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
		config = function()
			require("ibl").setup()
		end,
		ft = { "python" },
		dependencies = {
			"HiPhish/rainbow-delimiters.nvim"
		}
	}
}
