.vim
====

My vim dot files. the `.vimrc` file is saved to [vimrc](https://github.com/soleboxy/.vim/blob/master/vimrc).

Just run the following commands via terminal to get perfectly set up:

```console
$ cd ~/
$ git clone --recursive https://github.com/soleboxy/.vim.git .vim
$ ln -sf $HOME/.vim/vimrc $HOME/.vimrc
$ cd $HOME/.vim
$ git submodule update --init
```

## Pathogen
The vim dot files make use of the [Pathogen](https://github.com/tpope/vim-pathogen) runtime path manager to install plugins and runtime files into their own private directiories.

Currently using version 2.3 of Pathogen

## Plugins Used
* [emmet-vim](https://github.com/mattn/emmet-vim.git)
* [jedi-vim](https://github.com/davidhalter/jedi-vim.git)
* [nerdtree](https://github.com/scrooloose/nerdtree.git)
* [sunburst](https://github.com/sickill/vim-sunburst.git)
* [tabular](https://github.com/godlygeek/tabular.git)
* [vim-codeschool](https://github.com/akmassey/vim-codeschool.git)
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized.git)
* [vim-endwise](https://github.com/tpope/vim-endwise.git)
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors.git)
* [zenburn](https://github.com/jnurmine/Zenburn.git)
* [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs.git)
