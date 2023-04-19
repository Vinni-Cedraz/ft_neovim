-- File and Buffer Related
Keymap("n", "<leader>w", "<cmd>w<CR>") -- Save
Keymap("n", "<leader>q", "<cmd>wq<CR>") -- Save and quit
Keymap("n", "<leader>bq", "<cmd>bd<CR>") -- Buffer quit
Keymap("n", "<leader>nh", "<cmd>nohl<CR>") -- Clears every highlight
Keymap("n", "<leader>g", "gg=G", { silent = true }) -- Fix indentation in current buffer
vim.keymap.set("n", "<leader>g", "gg=G")

-- Move Lines
Keymap("n", "<C-j>", "<cmd>m +1 <CR>") -- CTRL + j Move line down
Keymap("n", "<C-k>", "<cmd>m.-2 <CR>") -- CTRL + k Move line up
Keymap("v", "<C-j>", ":m '>+1<CR>gv=gv") -- CTRL + j in visual mode moves every line selected down
Keymap("v", "<C-k>", ":m '<-2<CR>gv=gv") -- CTRL + k in visual mode moves every line selected up

-- Character Manipulation
Keymap("n", "<leader>+", "<C-a>") -- Increments value in cursor
Keymap("n", "<leader>-", "<C-x>") -- Decrements value in cursor
Keymap("n", "x", '"_x') -- Deleting a single character does not go into paste register

-- Tab Management
Keymap("n", "<leader>to", ":tabnew<CR>") -- Open new tab
Keymap("n", "<leader>tc", ":tabclose<CR>") -- Close tab
Keymap("n", "<leader>tn", ":tabn<CR>") -- Next tab
Keymap("n", "<leader>tN", ":tabp<CR>") -- Prev tab

-- 42 header
vim.keymap.set("n", "<leader>h", ":Stdheader<CR>")
