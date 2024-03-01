local cmd = vim.cmd
local create_autocmd = vim.api.nvim_create_autocmd
-- this one enables dap helptags
cmd([[autocmd BufEnter * silent! helptags ALL]])
cmd("command! Hello echo 'Hello, ' . $USER")
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

create_autocmd({ "BufRead" }, {
	pattern = { "*.log" },
	callback = function()
		cmd("term tail -f -n +1 %")
		vim.api.nvim_buf_set_keymap(0, 't', 'i', '<Nop>', { silent = true, nowait = true })
	end,
})

create_autocmd("BufWritePre", {
	pattern = "*.py",
	callback = function()
		local text = vim.api.nvim_buf_get_lines(0, 0, -1, false)
		for i, line in ipairs(text) do
			if #line > 80 then
				local break_points = {}
				local is_comment = line:sub(1, 1) == "#"
				-- Search for break points
				for j = 80, 1, -1 do
					local char = line:sub(j, j)
					if char == " " then
						table.insert(break_points, j - 1)
						break
					end
				end
				-- Apply break based on comment status
				if #break_points > 0 then
					local break_index = break_points[1]
					local first_part = line:sub(1, break_index)
					local second_part = line:sub(break_index + 1)
					if is_comment then
						second_part = "#" .. second_part -- Add comment prefix
					end
					text[i] = first_part
					table.insert(text, i + 1, second_part)
				else -- Hard break
					table.insert(text, i + 1, line:sub(81))
					text[i] = line:sub(1, 80)
				end
			end
		end
		vim.api.nvim_buf_set_lines(0, 0, -1, false, text)
	end,
})
