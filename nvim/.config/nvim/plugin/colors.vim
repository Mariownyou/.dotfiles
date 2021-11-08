" Colorschemes

" for vim 8
if (has("termguicolors"))
    set termguicolors
endif

set guifont=Monaco:h14
" colorscheme OceanicNext
if has('gui_running')
    let g:solarized_termcolors=256
    set t_Co=256
    syntax enable
    set background=dark
    colorscheme solarized
else
  colorscheme gruvbox
endif


" Change highlighting of cursor line when entering/leaving Insert Mode
set cursorline
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212

