call plug#begin('~/.vim/plugged')

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

" Git

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Themes
Plug 'mhartington/oceanic-next'
Plug 'ayu-theme/ayu-vim'
Plug 'andreasvc/vim-256noir'
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'
Plug 'gruvbox-community/gruvbox'

" Location
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'SmiteshP/nvim-gps'

" Imports
Plug 'mgedmin/python-imports.vim'
Plug 'skywind3000/gutentags_plus'
Plug 'ludovicchabant/vim-gutentags'


" Syntax
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'

" FRONTEND
Plug 'mattn/emmet-vim'

call plug#end()

let mapleader = " "
