syntax enable
set t_Co=256

" for vim 8
if (has("termguicolors"))
    set termguicolors
endif

if has('gui_running')
    colorscheme solarized
else
    let g:gruvbox_italiccize_strings = 1
    colorscheme gruvbox8
endif

" set macligatures
set guifont=Fira\ Code:h12
highlight Normal guibg=none

