local site_dir = vim.fn.expand("~/.local/share/nvim/site")

-- Spawn a background job to delete the site (from Packer plugin manager) directory.
-- this will avoid issues if the user has used Packer before this setup with lazy.nvim
vim.defer_fn(function()
	if vim.loop.fs_stat(site_dir) then
		vim.fn.system({ "rm", "-rf", site_dir })
	end
end, 0)

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
vim.g.mapleader = " "

-- TOP BE LOADED FIRST:
require('lazy').setup("plugins")
require("core.set_transparency")
require("core.colorscheme")

-- CONFIG MODULES TO BE LOADED:
require("user.alpha")
require("telescope").load_extension("projects")
pcall(require('telescope').load_extension, 'fzf')
require("user.keymaps")
require("user.lsp")
require("user.options")
require("user.floaterm")
require("user.autocommands")
require("user.dap")
require("user.cmp")
require("user.nvim-tree")
