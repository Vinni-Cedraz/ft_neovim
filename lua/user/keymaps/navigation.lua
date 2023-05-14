-- Navigate Windows
Keymap("n", "<C-h>", "<C-w>h", Opts)
Keymap("n", "<C-j>", "<C-w>j", Opts)
Keymap("n", "<C-k>", "<C-w>k", Opts)
Keymap("n", "<C-l>", "<C-w>l", Opts)

-- Navigate Buffers
Keymap("n", "<leader>e", ":NvimTreeToggle<CR>", Opts)
Keymap("n", "<S-q>", ":q<CR>", { noremap = true })

-- Navigate File
Keymap("n", "<C-d>", "<C-d>zz", Opts)
Keymap("n", "<C-u>", "<C-u>zz", Opts)

-- Navigate Tabs
Keymap("n", "<S-h>", "<Cmd>BufferPrevious<CR>", Opts)
Keymap("n", "<S-l>", "<Cmd>BufferNext<CR>", Opts)
Keymap("n", "<S-t>", "<Cmd>BufferClose!<CR>", Opts)
Keymap("n", "<C-S-M-h>", "<Cmd>BufferMovePrevious<CR>", Opts)
Keymap("n", "<C-S-M-l>", "<Cmd>BufferMoveNext<CR>", Opts)
Keymap("n", "<C-Z>", "<Cmd>BufferLast<CR>", Opts)
Keymap("n", "<C-P>", "<Cmd>BufferPin<CR>", Opts)
Keymap("n", "<leader>x", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>", Opts)
Keymap("n", "<leader>p", "<Cmd>BufferPick<CR>", Opts) -- Magic buffer-picking mode
Keymap("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", Opts) -- Sort automatically by...

-- Rest of the possible barbar keymaps --
-- Keymap('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', Opts)
-- Keymap('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', Opts)
-- Keymap('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', Opts
-- Keymap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', Opts)
-- Keymap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', Opts)
-- Keymap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', Opts)
-- Keymap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', Opts)
-- Keymap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', Opts)
-- Keymap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', Opts)
-- Keymap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', Opts)
-- Keymap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', Opts)
-- Keymap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', Opts)
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrent
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
--                 :BufferWipeout
