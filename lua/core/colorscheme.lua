-- Define the module table
local M = {}

-- Define the current color scheme index
M.current_scheme_index = 1

function M.Set_color_scheme(scheme)
	local clean_scheme = scheme:gsub(":colorscheme ", "")
	vim.cmd("colorscheme " .. clean_scheme)

	-- Write the selected color scheme to the config file
	local config_file = io.open(vim.env.HOME .. "/.config/nvim/colorscheme", "w")
	if config_file == nil then
		print("Could not open config file for writing.")
		return
	end

	config_file:write(clean_scheme .. "\n")
	config_file:close()
	SetTransparentBackground()
end

function M.Next_color_scheme()
	-- Increment the current color scheme index
	M.current_scheme_index = M.current_scheme_index + 1

	-- If the index is greater than the number of color schemes, reset it to 1
	if M.current_scheme_index > #M.Colorschemes then
		M.current_scheme_index = 1
	end

	-- Set the next color scheme
	M.Set_color_scheme(M.Colorschemes[M.current_scheme_index])
end

function M.Prev_color_scheme()
	-- Decrement the current color scheme index
	M.current_scheme_index = M.current_scheme_index - 1

	-- If the index is less than 1, reset it to the number of color schemes
	if M.current_scheme_index < 1 then
		M.current_scheme_index = #M.Colorschemes
	end

	-- Set the previous color scheme
	M.Set_color_scheme(M.Colorschemes[M.current_scheme_index])
end

-- Set the default colorscheme
local config_file = io.open(vim.env.HOME .. "/.config/nvim/colorscheme", "r")
if config_file ~= nil then
	local scheme = config_file:read("*line")
	config_file:close()

	if scheme ~= nil then
		M.Set_color_scheme(":colorscheme " .. scheme)
		M.Set_color_scheme(":colorscheme " .. scheme)
	end
end

-- Define the available color schemes
M.Colorschemes = {
	"rose-pine",
	"carbonfox",
	"terafox",
	"nightfox",
	"catppuccin-frappe",
	"habamax",
	"tokyonight",
	"dracula",
	"kanagawa",
}

-- Define the keymap to cycle through the available color schemes
vim.api.nvim_set_keymap(
	"n",
	"<M-1>",
	":lua require('core.colorscheme').Next_color_scheme()<CR>",
	{ noremap = true, silent = true }
)

-- Define the keymap to cycle through the available color schemes
vim.api.nvim_set_keymap(
	"n",
	"<M-2>",
	":lua require('core.colorscheme').Prev_color_scheme()<CR>",
	{ noremap = true, silent = true }
)

return M -- Define the module table
