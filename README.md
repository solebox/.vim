.vim
====

My vim dot files. the `.vimrc` file is saved to [vimrc](https://github.com/jfrazelle/.vim/blob/master/vimrc).

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

Currently using version 2.2 of Pathogen

## Plugins Used
```console
* [emmet-vim)
* [jedi-vim)
* [sunburst)
* [vim-codeschool)
* [vim-colors-solarized)
* [zenburn)
