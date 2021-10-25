call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mhartington/oceanic-next'

" Location
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'SmiteshP/nvim-gps'

" Imports
Plug 'mgedmin/python-imports.vim'
Plug 'ludovicchabant/vim-gutentags'

call plug#end()


" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif

colorscheme OceanicNext
let mapleader = " "
