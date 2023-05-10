local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = { "lua", "c", "bash", "markdown", "markdown_inline", "javascript"},
	ignore_install = { "" },
	sync_install = false,
	highlight = {
		enable = true,
		disable = { "css" },
	},
	autopairs = {
		enable = true,
	},
})
