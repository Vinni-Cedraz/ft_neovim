local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	ui = {
		colors = {
			normal_bg = "#022746",
		},
		theme = "round",
		code_action = "*",
	},
	symbol_in_winbar = {
		enable = true,
		separator = " ➜ ",
		show_file = true,
		respect_root = false,
		folder_level = 1,
		color_mode = true,
	},
})
