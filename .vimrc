set number
set relativenumber
set autoindent
filetype plugin indent on
set smartindent
set tabstop=4
set shiftwidth=4
set hidden
set ignorecase
set smartcase
set encoding=utf-8
syntax on
" Map Ctrl+Backspace
inoremap <C-H> <C-o>db
inoremap <C-BS> <C-o>db

" Map Ctrl+Del
inoremap <C-kDel> <C-o>de

hi CursorLineNR cterm=standout
set timeoutlen=3000
set ttimeoutlen=100
" Y yanks from cursor to end of line
map Y y$
set title

if has("autocmd")
  "  When editing a file jump to last valid position. Don't do this if it's a
  "  commit message
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit' | exe "normal! g'\"" | endif
endif

" Make Vim more user friendly but break compatibility with Vi
set nocompatible
