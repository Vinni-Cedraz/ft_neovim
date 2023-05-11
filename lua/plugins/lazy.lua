return {
	{
		"catppuccin/nvim",
		lazy = true,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				no_italic = true, -- Force no italic
			})
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = true,
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
		lazy = true,
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				disable_float_background = true,
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = true,
		config = function()
			require("tokyonight").setup({
				transparent = true,
				colors = {
					bg_float = "none",
				},
			})
		end,
	},
	{ "rebelot/kanagawa.nvim", lazy = true },
	{ "ChristianChiarulli/nvcode-color-schemes.vim", lazy = true },
	-- other plugins
	{ "nvim-lua/plenary.nvim", lazy = true },
	{ "kyazdani42/nvim-web-devicons", lazy = true },
	{ "onsails/lspkind.nvim", lazy = true, event = "LspAttach" },
	{ "jose-elias-alvarez/null-ls.nvim", lazy = true },
	{ "nvim-telescope/telescope-fzf-native.nvim", lazy = true },
	{ "nvim-treesitter/nvim-treesitter", lazy = false },
	{ "williamboman/mason.nvim", lazy = true },
	{ "goolord/alpha-nvim", lazy = true },
	{ "mbbill/undotree", lazy = true },
	{ "kyazdani42/nvim-tree.lua", lazy = true, commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" },
	{ "nvim-telescope/telescope.nvim", lazy = true },
	{ "voldikss/vim-floaterm", lazy = true },
	{ "moll/vim-bbye", lazy = true, event = "BufHidden" },
	{
		"cacharle/c_formatter_42.vim",
		lazy = true,
		event = "BufRead",
		pattern = "*.c,*.h",
	},
	{ "42paris/42header", lazy = true },
	{ "neovim/nvim-lspconfig", lazy = true },
	{ "williamboman/mason-lspconfig.nvim", lazy = true },
	{
		"glepnir/lspsaga.nvim",
		lazy = true,
		event = "LspAttach",
		config = function()
			require("lspsaga").setup({})
		end,
	},
	{ "hrsh7th/nvim-cmp", lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-buffer", lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-path", lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-nvim-lsp", lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-nvim-lua", lazy = true, event = "InsertCharPre" },
	{
		"zbirenbaum/copilot-cmp",
		commit = "b732a58ac8b7287b981cd9f0d9c0f61e5e9d5760",
		lazy = true,
		event = "InsertCharPre",
		config = function()
			require("copilot_cmp").setup({
				method = "getcompletionscycling",
			})
		end,
	},
	{ "mfussenegger/nvim-dap", lazy = true },
	{ "rcarriga/nvim-dap-ui", lazy = true },
	{ "ravenxrz/DAPInstall.nvim", lazy = true },
	{ "numToStr/Comment.nvim", lazy = true },
}
