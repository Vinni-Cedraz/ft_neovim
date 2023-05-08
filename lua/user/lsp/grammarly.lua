local grammarly = require("lspconfig").grammarly
grammarly.setup({
    cmd = { "/home/vcedraz-/.local/share/nvim/mason/bin/grammarly-languageserver", "--stdio" },
    capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function(_, bufnr)
        -- Set up keybindings for showing diagnostic messages
        local opts = { noremap = true, silent = true }
        Keymap(bufnr, "n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    end,
    settings = {
        language = "en-US",
        autoActivate = true,
        diagnosticSeverity = "information",
        serverUrl = "https://m1.grammarly.com",
        releaseServerUrl = "https://c-release.grammarly.com",
    },
})
