call plug#begin('~/.vim/plugged')

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'Mariownyou/harpoon-git'

" Git
" Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Themes
Plug 'mhartington/oceanic-next'
Plug 'altercation/vim-colors-solarized'
" Plug 'gruvbox-community/gruvbox'
Plug 'morhetz/gruvbox'

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

" FRONTEND
Plug 'mattn/emmet-vim'

call plug#end()

let mapleader = " "

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
