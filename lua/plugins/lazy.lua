return {
	-- colorschemes:
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
				overrides = {
					Normal = { bg = "None" },
				},
			})
		end,
	},
	{
		"rose-pine/neovim",
		lazy = true,
		config = function()
			require("rose-pine").setup({
				disable_italics = true,
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
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
					functions = {},
					variables = {},
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "transparent", -- style for sidebars, see below
					floats = "transparent", -- style for floating windows
				},
			})
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		opts = {
			colors = {
				pallette = {},
				theme = {
					wave = {},
					lotus = {},
					dragon = {},
					all = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},
		},
	},
	{
		"Mofiqul/dracula.nvim",
		lazy = true,
		opts = {
			transparent_bg = true,
		},
	},
	-- utilities:
	{ "nvim-lua/plenary.nvim",                    lazy = true },
	{ "kyazdani42/nvim-web-devicons",             lazy = true },
	{ "onsails/lspkind.nvim",                     lazy = true, event = "LspAttach" },
	{ "jose-elias-alvarez/null-ls.nvim",          lazy = true },
	{ "nvim-telescope/telescope-fzf-native.nvim", lazy = true },
	{ "nvim-treesitter/nvim-treesitter",          lazy = false },
	{ "williamboman/mason.nvim",                  lazy = true },
	{ "williamboman/mason-nvim-dap.nvim",                  lazy = true },
	{ "goolord/alpha-nvim",                       lazy = true },
	{ "mbbill/undotree",                          lazy = true, cmd = "UndotreeToggle" },
	{
		"kyazdani42/nvim-tree.lua",
		lazy = true,
		commit = "7282f7de8aedf861fe0162a559fc2b214383c51c",
	},
	{ "voldikss/vim-floaterm", lazy = false, priority = 2000 },
	{ "moll/vim-bbye",         lazy = true,  event = "BufHidden" },
	{
		"cacharle/c_formatter_42.vim",
		lazy = true,
		event = "BufRead",
		pattern = "*.c,*.h",
	},
	{ "42paris/42header",                  lazy = true },
	{ "neovim/nvim-lspconfig",             lazy = true },
	{ "williamboman/mason-lspconfig.nvim", lazy = true },
	{
		"glepnir/lspsaga.nvim",
		lazy = true,
		event = "LspAttach",
		config = function()
			require("lspsaga").setup({
				ui = {
					colors = {
						normal_bg = "#022746",
					},
					theme = "round",
					code_action = " ",
				},
				symbol_in_winbar = {
					enable = true,
					separator = " 󰧂 ",
					show_file = true,
					respect_root = false,
					folder_level = 1,
					color_mode = true,
				},
			})
		end,
	},
	{ "hrsh7th/nvim-cmp",     lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-buffer",   lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-path",     lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-nvim-lsp", lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-nvim-lua", lazy = true, event = "InsertCharPre" },
	{
		"zbirenbaum/copilot-cmp",
		lazy = true,
		event = "InsertCharPre",
		config = function()
			require("copilot_cmp").setup({
				method = "getcompletionscycling",
			})
		end,
	},
	{ "rcarriga/nvim-dap-ui",     dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	{ "ravenxrz/DAPInstall.nvim", lazy = true },
	{ "numToStr/Comment.nvim",    lazy = true },
}
