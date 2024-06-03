local hasFloaterm = false

function FloatermToggle()
  if hasFloaterm then
    vim.cmd('FloatermToggle')
  else
    vim.cmd('FloatermNew --wintype=float --position=bottomright')
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
 	":let input = input('Enter an argument: ') | :execute 'FloatermNew --autoclose=0 cc -g -Wall -Wextra -Werror % -o %< && ./%< '.input <CR>",
	Opts
)

Keymap(
	"n",
	"<leader>cpp",
 	":let input = input('Enter an argument: ') | :execute 'FloatermNew --autoclose=0 c++ -g -Wall -Wextra -Werror % -o %< && ./%< '.input <CR>",
	Opts
)

Keymap(
	"n",
	"test",
	":FloatermNew --autoclose=0 cc -g -Wall -Wextra -Werror -lm -lcriterion -I$HOME/MiniRT/include/ -I$HOME/MiniRT/libs/ % -o %< $HOME/MiniRT/minirt.a && ./%< --verbose <CR>",
	Opts
)

-- executes the current js/ts or dart file in a floating window
-- it can take an argument from the user:
Keymap(
    "n",
    "<leader>js",
    ":let input = input('Enter an argument: ') | :execute 'FloatermNew --autoclose=0 node % '.input <CR>",
    Opts
)

Keymap(
    "n",
    "<leader>py",
    ":let input = input('Enter an argument: ') | :execute 'FloatermNew --autoclose=0 python3 % '.input <CR>",
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
