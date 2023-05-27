
# ft_neovim

- atenção: Isso foi testado apenas em ambientes Linux (Ubuntu, Arch, Alpine, Debian)

# Setup:
- adicione ~/.local/ e ~/.local/bin ao seu PATH para não ter problemas com o norminetador
- clone o repositório dentro do seu ~/.config em um diretório chamado nvim
- rode o programa
- quando o Lazy terminar de instalar os plugins, aguarde as instalações do treesiter
- ao finalizar as instalações do treesitter digite :Mason e verifique se clangd, lua-language-server e etc foram instalados corretamente (aproveite pra entender como o Mason funciona)
![image](https://user-images.githubusercontent.com/92558763/222973781-3447be7d-9f7f-4478-b9cf-2f634586b991.png)
A imagem de fundo é o meu wallpaper, o ft_neovim é transparente por default, mas isso depende das configurações do seu terminal.
Aqui vai uma lista de terminais que suportam transparência:
- terminator
- st (simple terminal)
- wezterm 
- kitty
- allacritty
- GNOME Terminal
- Tilix
- Xfce Terminal

# pre-requisitos:

- Neovim 8.0 ++
- coisas que com quase toda certeza você já tem: git, curl or wget, unzip, tar, gzip, gcc or clang, make, libstdc++ 
- ripgrep (github.com/BurntSushi/ripgrep) --> para a funcionalidade live grep do telescope
- Nerd-Fonts
- npm versão 16 --> (para o copilot e talvez outros plugins tbm)
- python3-pip --> (para o norminetador automático)

## Sem paciência de instalar os pré-requisitos? Está em uma máquina com o ambiente meio bugado? 
Então roda com Docker: https://github.com/Vinni-Cedraz/ubuntu_22.04_container.git
Esse repo aí é a mesma versão de ubuntu usada na 42, com todos os pré-requisitos necessários pro ft_neovim, 
além de zsh com plugins úteis, tema p10k e aliases que fazem sentido.

# Como usar:

A maior parte de como usar vai depender de aprender a usar vim-motions em si, mas existem certas particularidades do ft_neovim
Essas particularidades se devem aos plugins e atalhos utilizados.
Para entender os atalhos personalizados (keymaps) leia os arquivos .lua que se encontram no diretório nvim/lua/user/keymaps/
Os keymaps estão separados em arquivos por tópico. Sugiro começar pelo general_use_keymaps.lua.

## Exemplos de algumas funcionalidades:

- F1 coloca o header da 42
- F2 formata o seu código de acordo com A Norma
- espaço + cc compila e executa o programa em C escrito no arquivo atual em uma janela flutuante do terminal, assim vc pode fazer um teste rápido sem precisar sair do ft_neovim ou digitar gcc blabla.c && ./a.out ---> testado em programas simples, que não recebem argumentos
- Shift + K em cima de uma keyword abre uma janelinha com a definição
- gf em cima do nome de uma função te leva para o arquivo que recebe o mesmo nome da função (se ele existir)
- gd em cima do nome de uma função te leva para o lugar onde a função foi definida, mesmo se for em outro arquivo, em alguns casos pode bugar e te levar pra prototipação em vez da definição, aí vc tenta com gf
- espaço + rn renomeia todas as instâncias de uma função que aparecerem no teu projeto (do diretório atual para baixo!)
- espaço + js executa o codigo javascript do arquivo atual em uma janela de terminal flutuante.

## Mais sobre como usar:
Todos os plugins utilizados tem mais funcionalidades do que aquelas eu eu mapeei e sei utilizar
Então, sempre que você quiser aprender mais, pode dar uma lida na documentação dos plugins
Segue uma lista com todos os plugins utilizados no ft_neovim:
- github.com/lewis6991/impatient.nvim
- github.com/nvim-lua/plenary.nvim
- github.com/kyazdani42/nvim-web-devicons
- github.com/onsails/lspkind.nvim
- github.com/jose-elias-alvarez/null-ls.nvim
- github.com/nvim-telescope/telescope-fzf-native.nvim
- github.com/wbthomason/packer.nvim
- github.com/williamboman/mason.nvim
- github.com/goolord/alpha-nvim
- github.com/mbbill/undotree
- github.com/kyazdani42/nvim-tree.lua
- github.com/nvim-telescope/telescope.nvim
- github.com/voldikss/vim-floaterm
- github.com/moll/vim-bbye
- github.com/akinsho/bufferline.nvim
- github.com/cacharle/c_formatter_42.vim
- github.com/42paris/42header
- github.com/hrsh7th/nvim-cmp
- github.com/hrsh7th/cmp-buffer
- github.com/hrsh7th/cmp-path
- github.com/hrsh7th/cmp-nvim-lsp
- github.com/hrsh7th/cmp-nvim-lua
- github.com/williamboman/nvim-lsp-installer
- github.com/neovim/nvim-lspconfig
- github.com/williamboman/mason-lspconfig.nvim
- github.com/glepnir/lspsaga.nvim
- github.com/zbirenbaum/copilot.lua
- github.com/zbirenbaum/copilot-cmp
- github.com/nvim-treesitter/nvim-treesitter
- github.com/mfussenegger/nvim-dap
- github.com/rcarriga/nvim-dap-ui
- github.com/ravenxrz/DAPInstall.nvim
- github.com/numToStr/Comment.nvim
- github.com/JoosepAlviste/nvim-ts-context-commentstring
