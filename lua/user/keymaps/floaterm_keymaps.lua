local hasFloaterm = false

function FloatermToggle()
  if hasFloaterm then
    vim.cmd('FloatermToggle')
  else
    vim.cmd('FloatermNew --height=0.6 --width=0.4 --wintype=float --position=topleft')
    hasFloaterm = true
  end
end

Keymap(
  {"n","t"},
  "<M-i>",
  "<CMD>lua FloatermToggle()<CR>",
  Opts
)

-- compiles a "modular" .c file and executes the resulting binary in a floating window
-- it can take an argument from the user:
Keymap(
	"n",
	"<leader>cc",
    ":let input = input('Enter an argument: ') | :execute 'FloatermNew --autoclose=0 cc -g -Wall -Wextra -Werror -fsanitize=address -lm % -o %< && ./%< '.input <CR>",
	Opts
)

-- executes the current js/ts or dart file in a floating window
-- it can take an argument from the user:
Keymap(
    "n",
    "<leader>js",
    ":FloatermNew --autoclose=0 node % <CR>",
    Opts
)

Keymap(
    "n",
    "<leader>dt",
    ":let input = input('Enter an argument: ') | :execute 'FloatermNew --autoclose=0 dart % '.input <CR>",
    Opts
)

Keymap(
    "n",
    "<leader>mk",
    ":FloatermNew --autoclose=0 make<CR>",
    Opts
)
