-- opens float term
Keymap(
	"n",
	"<leader>ft",
	":FloatermNew --height=0.6 --width=0.4 --wintype=float --position=topleft --cwd=<buffer><CR>",
	Opts
)

-- compiles a "modular" .c file and executes the resulting binary in a floating window
Keymap(
	"n",
	"<leader>cc",
	":FloatermNew --autoclose=0 cc -g -Wall -Wextra -Werror -fsanitize=address -lm % -o %< && ./%< <CR>",
	Opts
)

-- takes the current .js or .ts file and runs is with node on a floating window
Keymap(
	"n",
	"<leader>js",
	":FloatermNew --autoclose=0 node % <CR>",
	Opts
)

-- takes the current .dart file and runs it on a floating window
Keymap(
	"n",
	"<leader>dt",
	":FloatermNew --autoclose=0 dart % <CR>",
	Opts
)
