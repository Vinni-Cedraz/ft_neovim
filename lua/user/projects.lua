local M = {}

function M.config()
	require("project_nvim").setup({
		sync_root_with_cwd = true,
		respect_buf_cwd = true,
		update_focused_file = {
			enable = true,
			update_root = true,
		},
	})
end

return M
