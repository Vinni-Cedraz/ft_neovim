# ft_neovim

# Setup:
- adicione ~/.local/ e ~/.local/bin ao seu PATH para não ter problemas com o norminetador
- clone o repositório dentro do seu ~/.config em um diretório chamado nvim
- rode o programa
- quando o Lazy terminar de instalar os plugins, aguarde as instalações do treesiter
- ao finalizar as instalações do treesitter digite :Mason e verifique se clangd,
  lua-language-server e etc foram instalados corretamente (aproveite pra
  entender como o Mason funciona)
![image](https://github.com/Vinni-Cedraz/ft_neovim/assets/92558763/5897432c-3921-493b-a8c7-ce721e31c0fc)

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
- coisas que talvez vc precise instalar antes:
- ripgrep (github.com/BurntSushi/ripgrep) --> para a funcionalidade live grep do telescope
- Nerd-Fonts
- npm versão 16 --> (para o copilot e varios outros plugins)
- python3-pip --> (para o norminetador automático)
- python3.10-venv --> se vc quiser instalar e usar clang-format e outros (:MasonInstall clang-format)

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

- F1 Coloca o header da 42
- F2 formata o seu código de acordo com A Norma
- espaço + cc compila e executa o programa em C escrito no arquivo atual em uma
  janela flutuante do terminal, assim vc pode fazer um teste rápido sem precisar
  sair do ft_neovim ou digitar gcc blabla.c && ./a.out ---> <Agora ja funciona
  com argumentos tbm, eh so responder o prompt que vai aparecer "Enter your
  argument: ">
- espaço + js executa o codigo javascript do arquivo atual em uma janela de terminal flutuante.
- espaço + dt faz o mesmo para um arquivo .dart
- Shift + K em cima de uma keyword abre uma janelinha com a definição
- gf em cima do nome de uma função te leva para o arquivo que recebe o mesmo nome da função (se ele existir)
- gd em cima do nome de uma função te leva para o lugar onde a função foi
  definida, mesmo se for em outro arquivo, em alguns casos pode bugar e te levar
  pra prototipação em vez da definição, aí vc tenta com gf
- espaço + rn renomeia todas as instâncias de uma função que aparecerem no teu projeto
- Alt + 1 troca para o proximo colorscheme pre-configurado, Alt + 2 volta para o
  colorscheme anterior.

## Como atualizar para se manter em dia com as novas funcionalidades:
- Basta clicar no botao Update que vc consegue ver na pagina inicial
  (aquela foto ali no comeco deste readme)

## Como Instalar novos plugins:
- Se vc quiser instalar e configurar um outro plugin que nao veio junto com o
  ft_neovim => use o diretorio lua/plugins/
- Voce pode instalar e configurar outros plugins da sua escolha desde que suas
  configuracoes estejam dentro do diretorio lua/plugins/ em um arquivo nomeado
  com o prefixo custom_ por exemplo 'lua/plugins/custom_gruvbox-colorscheme.lua'.

## Como mudar as configuracoes de options do neovim:
- Se vc quiser mudar os options, (por exemplo o numero de espacos de um tab ou a
  existencia de um barra de cor na coluna 80 etc), voce pode tbm.
- Basta editar o arquivo chamado custom_options.lua que existe dentro do
  diretorio lua/user/ e adicionar nele todas as mudancas que vc quiser.

###  Atencao:
- Qualquer alteracao feita por voce que nao esteja dentro do diretorio plugins/
  em algum arquivo .lua nomeado com o prefixo custom_ sera apagada quando vc for
  fazer o update.
- Todos os arquivos .lua dentro do diretorio lua/plugins
  precisam estar dentro da syntaxe do Lazy.nvim, que eh o plugin que instala e
  gerencia outros plugins => https://github.com/folke/lazy.nvim
