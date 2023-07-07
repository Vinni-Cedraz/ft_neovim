local notify_filter = vim.notify
vim.notify = function(msg, ...)
	if
		msg:match("warning: multiple different client offset_encodings detected for buffer, this is not supported yet")
	then
		return
	end
	notify_filter(msg, ...)
end

local dap = require("dap")

dap.adapters.dart = {
	type = "executable",
	command = "dart",
	args = { "debug_adapter" },
}

dap.configurations.dart = {
	{
		name = "Launch Dart Program",
		type = "dart",
		request = "launch",
		-- file here means the name of the current file
		program = "${file}",
		cwd = "${workspaceFolder}",
		args = { "--help" },
	},
}
