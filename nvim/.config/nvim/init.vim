call plug#begin('~/.vim/plugged')

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
" Plug 'ThePrimeagen/harpoon'
" Plug 'Mariownyou/harpoon'
Plug 'Mariownyou/harpoon-git'

" Git
Plug 'tpope/vim-fugitive'
" Plug 'lewis6991/gitsigns.nvim'
Plug 'airblade/vim-gitgutter'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Themes
Plug 'mhartington/oceanic-next'
Plug 'altercation/vim-colors-solarized'
" Plug 'gruvbox-community/gruvbox'
Plug 'morhetz/gruvbox'

" Location
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'SmiteshP/nvim-gps'

" " Imports
" Plug 'mgedmin/python-imports.vim'
" Plug 'skywind3000/gutentags_plus'
Plug 'ludovicchabant/vim-gutentags'

" Syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'

" FRONTEND
Plug 'mattn/emmet-vim'

call plug#end()

let mapleader = " "
