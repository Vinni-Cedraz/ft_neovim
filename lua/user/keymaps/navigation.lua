  -- Navigate Windows
  Keymap("n", "<C-h>", "<C-w>h", Opts)
  Keymap("n", "<C-j>", "<C-w>j", Opts)
  Keymap("n", "<C-k>", "<C-w>k", Opts)
  Keymap("n", "<C-l>", "<C-w>l", Opts)

  -- Navigate Buffers
  Keymap("n", "<leader>e", ":NvimTreeToggle<CR>", Opts)
  Keymap("n", "<S-l>", ":bnext<CR>", Opts)
  Keymap("n", "<S-h>", ":bprevious<CR>", Opts)
  Keymap("n", "<S-q>", ":q<CR>", { noremap = true })
  Keymap("n", "<S-t>", "<cmd>Bdelete!<CR>", Opts) -- Close current buffer

  -- Navigate File
  Keymap("n", "<C-d>", "<C-d>zz", Opts)
  Keymap("n", "<C-u>", "<C-u>zz", Opts)
