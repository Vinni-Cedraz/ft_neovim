function SetTransparentBackground()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	require("catppuccin").setup({
		transparent_background = true,
 		no_italic = true, -- Force no italic
	})
	require("nightfox").setup({
		options = {
			transparent = true,
		},
	})
	require("rose-pine").setup({
		disable_background = true,
		disable_float_background = true,
	})
	require("tokyonight").setup({
		transparent = true,
	})
end

return SetTransparentBackground()
