local cmd = vim.cmd
local create_autocmd = vim.api.nvim_create_autocmd
-- this one enables dap helptags
cmd([[autocmd BufEnter * silent! helptags ALL]])
cmd("command! Hello echo 'Hello, World!'")
cmd("nnoremap <silent> - :Hello<CR>")

-- the following autocommand executes :set suffixesadd=.c/.h everytime a .c/.h file is opened
create_autocmd("BufRead", {
	pattern = "*.c,*.h",
	callback = function()
		vim.cmd("set suffixesadd=.c")
	end,
})

create_autocmd({ "BufEnter" }, {
	callback = function()
		vim.cmd([[
      if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
    ]])
	end,
})

create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 70 })
	end,
})

create_autocmd({ "BufWritePost" }, {
	pattern = { "*.java" },
	callback = function()
		vim.lsp.codelens.refresh()
	end,
})

create_autocmd({ "VimEnter" }, {
	callback = function()
		vim.cmd("echo 'Welcome, ' . $USER")
		vim.cmd("hi link illuminatedWord LspReferenceText")
	end,
})

-- Copilot icon
create_autocmd({ "ColorScheme" }, {
	callback = function()
		cmd("highlight CmpItemKindCopilot ctermfg=6 guifg=#00FF00")
	end,
})

create_autocmd({ "VimEnter" }, {
	callback = function()
		cmd("highlight CmpItemKindCopilot ctermfg=6 guifg=#00FF00")
	end,
})

create_autocmd({ "BufRead,BufNewFile" }, {
	pattern = { "*.log" },
	callback = function()
		cmd("term tail -f -n +1 %")
		vim.api.nvim_buf_set_keymap(0, 't', 'i', '<Nop>', { silent = true, nowait = true })
	end,
})

