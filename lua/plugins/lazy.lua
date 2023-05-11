return {
	-- colorschemes:
	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				no_italic = true, -- Force no italic
			})
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true,
				},
			})
		end,
	},
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				disable_float_background = true,
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				transparent = true,
				colors = {
					bg_float = "none",
				},
			})
		end,
	},
	{ "rebelot/kanagawa.nvim" },
	-- other plugins
	{ "ChristianChiarulli/nvcode-color-schemes.vim" },
	{ "nvim-lua/plenary.nvim" },
	{ "kyazdani42/nvim-web-devicons" },
	{ "onsails/lspkind.nvim" },
	{ "jose-elias-alvarez/null-ls.nvim" },
	{ "nvim-telescope/telescope-fzf-native.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "williamboman/mason.nvim" },
	{ "goolord/alpha-nvim" },
	{ "mbbill/undotree" },
	{ "kyazdani42/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" },
	{ "nvim-telescope/telescope.nvim" },
	{ "voldikss/vim-floaterm" },
	{ "moll/vim-bbye" },
	{ "cacharle/c_formatter_42.vim" },
	{ "42paris/42header" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },
	{ "williamboman/nvim-lsp-installer" },
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason-lspconfig.nvim" },
	{
		"glepnir/lspsaga.nvim",
		config = function()
			require("lspsaga").setup({})
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		commit = "b732a58ac8b7287b981cd9f0d9c0f61e5e9d5760",
		config = function()
			require("copilot_cmp").setup({
				method = "getcompletionscycling",
			})
		end,
	},
	{ "mfussenegger/nvim-dap" },
	{ "rcarriga/nvim-dap-ui" },
	{ "ravenxrz/DAPInstall.nvim" },
	{ "numToStr/Comment.nvim" },
}
