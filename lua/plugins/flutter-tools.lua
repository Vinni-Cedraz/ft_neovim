return {
	"akinsho/flutter-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	config = true,
	-- see the link below for details on each option:
	-- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
	settings = {
		showTodos = true,
		completeFunctionCalls = true,
		analysisExcludedFolders = { "$HOME/.flutter/bin/flutter" },
		renameFilesWithClasses = "prompt", -- "always"
		enableSnippets = true,
		updateImportsOnRename = true, -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
	},
}
