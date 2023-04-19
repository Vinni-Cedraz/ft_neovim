-- PLUGIN MANAGER SETUP
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("core.options")
require("core.lazy")

-- CONFIG MODULES FOR EACH PLUGIN
require("user.impatient")
require("user.treesitter")
require("user.alpha")
require("user.autocommands")
require("user.set_transparency")
require("user.colorscheme")
require("telescope").load_extension("projects")
require("user.projects").config()
require("user.nvim-tree")
require("user.keymaps")
require("user.bufferline")
require("user.lsp")
require("user.floaterm")
require("user.cmp")
require("user.copilot")
require("user.log_file")
require("user.lualine")
require("user.dap")
require("user.floating_todo_list")
