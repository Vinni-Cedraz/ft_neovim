local hasFloaterm = false

function FloatermToggle()
  if hasFloaterm then
    vim.cmd('FloatermToggle')
  else
    vim.cmd('FloatermNew --height=0.5 --width=0.5 --wintype=float --position=bottomright')
    hasFloaterm = true
  end
end

-- Alt + i opens or closes a floating terminal session with zsh running there
Keymap(
  {"n","t"},
  "<M-i>",
  "<CMD>lua FloatermToggle()<CR>",
  Opts
)

-- runs make in a floating terminal window in the current buffer
Keymap(
    "n",
    "<leader>mk",
    ":FloatermNew --autoclose=0 make<CR>",
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

-- same thing but for c++
Keymap(
	"n",
	"<leader>cpp",
 	":let input = input('Enter an argument: ') | :execute 'FloatermNew --autoclose=0 c++ -g -Wall -Wextra -Werror % -o %< && ./%< '.input <CR>",
	Opts
)

-- same thing but for node js
Keymap(
    "n",
    "<leader>js",
    ":let input = input('Enter an argument: ') | :execute 'FloatermNew --autoclose=0 node % '.input <CR>",
    Opts
)

-- same thing but for node python
Keymap(
    "n",
    "<leader>py",
    ":let input = input('Enter an argument: ') | :execute 'FloatermNew --autoclose=0 python3 % '.input <CR>",
    Opts
)

-- same thing but for node dart
Keymap(
    "n",
    "<leader>dt",
    ":let input = input('Enter an argument: ') | :execute 'FloatermNew --autoclose=0 dart % '.input <CR>",
    Opts
)
