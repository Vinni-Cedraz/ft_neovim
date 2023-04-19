local notify_filter = vim.notify
vim.notify = function(msg, ...)
  if msg:match "warning: multiple different client offset_encodings detected for buffer, this is not supported yet" then
    return
  end
  notify_filter(msg, ...)
end

local dap = require('dap')
dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'codelldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = function()
      local args = {}
      local i = 1
      while true do
        local arg = vim.fn.input("Argument [" .. i .. "]: ")
        if arg == "" then
          break
        end
        args[i] = arg
        i = i + 1
      end
      return args
    end,
  },
}

-- If you want to use this for Rust and C, add something like this:

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

dap.adapters.lldb = {
  type = 'executable';
  command = os.getenv('HOME') .. '/.local/share/nvim/mason/packages/codelldb/codelldb';

  args = { '-m', 'codelldb.adapter' };
}

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = os.getenv('HOME') .. '/.local/share/nvim/mason/packages/codelldb/codelldb',
    args = {"--port", "${port}"},
    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}
