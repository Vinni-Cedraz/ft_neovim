return {
	{ "lewis6991/impatient.nvim" },
	{ "catppuccin/nvim" },
	{ "EdenEast/nightfox.nvim" },
	{ "rose-pine/neovim" },
	{ "folke/tokyonight.nvim" },
	{ "ChristianChiarulli/nvcode-color-schemes.vim" },
	{ "rebelot/kanagawa.nvim" },
	{ "nvim-lua/plenary.nvim" },
	{ "kyazdani42/nvim-web-devicons" },
	{ "onsails/lspkind.nvim" },
	{ "jose-elias-alvarez/null-ls.nvim" },
	{ "nvim-telescope/telescope-fzf-native.nvim" },
	{ "ahmedkhalf/project.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "akinsho/bufferline.nvim", commit = "83bf4dc7bff642e145c8b4547aa596803a8b4dc4" },
	{ "williamboman/mason.nvim" },
	{ "goolord/alpha-nvim" },
	{ "mbbill/undotree" },
	{ "kyazdani42/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" },
	{ "nvim-telescope/telescope.nvim" },
	{ "voldikss/vim-floaterm" },
	{ "moll/vim-bbye" },
	{ "nvim-lualine/lualine.nvim" },
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
		"zbirenbaum/copilot.lua",
		event = { "vimenter" },
		config = function()
			vim.defer_fn(function()
				require("user.copilot").setup()
			end, 100)
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
