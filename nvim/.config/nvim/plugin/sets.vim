set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nowrap
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
" set noshowmode
set signcolumn=yes
set isfname+=@-@
" set ls=0
set clipboard+=unnamedplus
" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" set updatetime=50
set fileformats=unix
filetype plugin on


set encoding=utf8
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_nerdtree = 1

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
