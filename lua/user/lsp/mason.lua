local servers = {
	"clangd",
	"lua_ls",
	"ts_ls",
	"pyright",
}

require("mason").setup({
	ui = {
		border = "none",
		icons = {
			package_installed = "◍ ",
			package_pending = "◍ ",
			package_uninstalled = "◍ ",
		},
	},
	max_concurrent_installers = 4,
})

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local mason_registry = require('mason-registry')

-- Ensure black is installed
if not mason_registry.is_installed('black') then
	mason_registry.get_package('black'):install()
end

local opts = {
	on_attach = require("user.lsp.handlers").on_attach,
	capabilities = require("user.lsp.handlers").capabilities,
}

mason_lspconfig.setup_handlers({
	function(server_name)
		local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.settings." .. server_name)
		if has_custom_opts then
			opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
		end
		require("lspconfig")[server_name].setup(opts)

		-- Manually attach the LSP server to the current buffer if the filetype matches
		local bufnr = vim.api.nvim_get_current_buf()
		local filetype = vim.api.nvim_buf_get_option(bufnr, "filetype")
		local lspconfig = require("lspconfig")

		if lspconfig[server_name].document_config.default_config.filetypes then
			for _, ft in ipairs(lspconfig[server_name].document_config.default_config.filetypes) do
				if ft == filetype then
					local clients = vim.lsp.get_active_clients({ bufnr = bufnr })
					local client_attached = false
					for _, client in ipairs(clients) do
						if client.name == server_name then
							client_attached = true
							break
						end
					end
					if not client_attached then
						vim.lsp.buf_attach_client(
							bufnr,
							vim.lsp.start_client({
								name = server_name,
								cmd = lspconfig[server_name].document_config.default_config.cmd,
								root_dir = lspconfig.util.root_pattern(".git")(vim.fn.expand("%:p")),
								capabilities = opts.capabilities,
								on_attach = opts.on_attach,
							})
						)
					end
					break
				end
			end
		end
	end,
})
