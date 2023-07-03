Keymap("n", "x", '"_x') -- throws the deletion of a single char into the "black hole" (not the clipboard)
Keymap("n", "J", "mzJ`z", Opts) -- makes the cursor stay on play when concatenating lines using "J"
Keymap("n", "<C-d>", "<C-d>zz", Opts) -- center the screen while doing the <C-d> <C-u> thing
Keymap("n", "<C-u>", "<C-u>zz", Opts)

