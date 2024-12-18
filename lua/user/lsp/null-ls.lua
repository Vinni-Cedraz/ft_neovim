local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({
			filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact" },
		}),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
	},
})
