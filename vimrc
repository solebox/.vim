" remap leader key
let mapleader = ","
" emmet leader key (yeah it works :) ) 
let g:user_emmet_leader_key=','

set expandtab
set tabstop=4
set shiftwidth=4
set relativenumber
filetype off

" Pathogen load
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
colorscheme Sunburst
hi Visual term=reverse cterm=reverse guibg=Grey
" split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" tab nav
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>t <esc>:tabnew<CR>
map <Leader>T <esc>:tabclose<CR>
" indent hack
vnoremap < <gv 
vnoremap > >gv 

