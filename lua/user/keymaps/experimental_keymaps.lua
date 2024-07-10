-- Go Crazy
Keymap(
	"n",
	"<leader>md",
	[[:silent !mkdir -p %:p:h/%:t:r && mv % %:p:h/%:t:r && :tabnew %:p:h/%:t:r<CR>:silent! bufdo %bd! | :silent! execute('xa')<CR>]],
	{ noremap = true, silent = true }
	-- creates a directory with the name of the current file, mv the file there, saves and exits all open buffers
)

-- custom clang-format
Keymap(
	"n",
	"<leader>c",
	":%!clang-format --style=file:"
		.. vim.fn.system("echo " .. vim.fn.shellescape(vim.fn.expand("~/.config/nvim/my_llvm.clang-format")))
		.. "<CR>",
	{ silent = true }
)

-- Move Lines
Keymap("v", "<C-j>", ":m '>+1<CR>gv=gv") -- CTRL + j in visual mode moves every line selected down
Keymap("v", "<C-k>", ":m '<-2<CR>gv=gv") -- CTRL + k in visual mode moves every line selected up

Keymap("n", "mini", ":lua require('mini.colors').interactive()<CR>", Opts)
