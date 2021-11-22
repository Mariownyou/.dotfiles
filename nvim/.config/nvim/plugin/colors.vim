" Colorschemes
set background=dark
" let g:solarized_termcolors=256
syntax enable
set t_Co=256

" for vim 8
if (has("termguicolors"))
    set termguicolors
endif
" colorscheme OceanicNext

if has('gui_running')
    colorscheme solarized
else
    colorscheme gruvbox
endif

" set macligatures
set guifont=Fira\ Code:h12
highlight Normal guibg=none

" Change highlighting of cursor line when entering/leaving Insert Mode
set cursorline
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212

