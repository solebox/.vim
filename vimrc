" remap leader key
let mapleader = ","
" emmet leader key (yeah it works :) ) 
let g:user_emmet_leader_key=','

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Make vim more useful
set nocompatible

" Enhance command-line completion
set wildmenu

" Optimize for fast terminal connections
set ttyfast

" Don’t add empty newlines at the end of files
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Highlight current line
set cursorline

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Ignore case of searches
set ignorecase
" Show the filename in the window titlebar
set title
" Start scrolling three lines before the horizontal window border
set scrolloff=3

set expandtab
set tabstop=4
set shiftwidth=4
set relativenumber
set backspace=indent,eol,start
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

" ===  nerd tree ===
noremap <Leader>1 :NERDTreeTabsToggle<cr>
let NERDTreeMapOpenInTab='t'

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']
" Close nerdtree and vim on close file
function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()

" == vim multiple cursors ===
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-i>'
let g:multi_cursor_prev_key='<C-y>'
let g:multi_cursor_skip_key='<C-b>'
let g:multi_cursor_quit_key='<Esc>'


" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

" map jj to esc (insert mode)
imap jj <ESC>
" line length limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%181v.\+/

"highlight search 
set hlsearch

" matching objects (braces, paran , etc) 
noremap % v% 
map ff ]}
map fs [{
