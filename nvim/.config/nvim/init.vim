call plug#begin('~/.vim/plugged')

" Navigation
Plug 'vim-airline/vim-airline'
Plug 'Mariownyou/harpoon-git'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Git
" Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Themes
Plug 'lifepillar/gruvbox8'

" Location
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'SmiteshP/nvim-gps'

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

" " Imports
" Plug 'mgedmin/python-imports.vim'
" Plug 'skywind3000/gutentags_plus'
" Plug 'ludovicchabant/vim-gutentags'


" Syntax
Plug 'tpope/vim-commentary'
Plug '9mm/vim-closer'

" FRONTEND
Plug 'mattn/emmet-vim'

call plug#end()

let mapleader = " "

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
