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
require("core.options")
require('lazy').setup("plugins")

-- CONFIG MODULES FOR EACH PLUGIN
require("user.treesitter")
require("user.alpha")
require("user.autocommands")
require("user.set_transparency")
require("user.colorscheme")
require("telescope").load_extension("projects")
require("user.nvim-tree")
require("user.keymaps")
require("user.lsp")
require("user.floaterm")
require("user.cmp")
require("user.dap")
