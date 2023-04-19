-- Create a new module
local M = {}

-- Set the log levels and handlers
function M.setup()
    vim.lsp.set_log_level("warn")
    vim.lsp.set_log_file("nvim.log")
    vim.lsp.set_log_level("debug", "workspace")
    vim.lsp.set_log_level("warn", "rpc")
    vim.lsp.set_log_level("error", "server")

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false,
            signs = true,
            underline = true,
            update_in_insert = true,
        }
    )

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
        vim.lsp.handlers.hover, {
            border = "single"
        }
    )
end

-- Return the module table
return M
