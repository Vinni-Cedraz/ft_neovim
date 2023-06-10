-- LSP
Keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })

-- Text Object Manipulation
Keymap("n", "J", "mzJ`z", Opts)
Keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/]], Opts)

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
