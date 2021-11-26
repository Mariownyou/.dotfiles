" inoremap <silent><expr> <c-space> coc#refresh()
" let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_max_num_candidates = 10
" nmap <silent>gd  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Autoimport
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" " Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction


" " popup height 
" set pumheight=10
" set updatetime=300

" " Mappings
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gr <Plug>(coc-references)
" nmap <leader>rn <Plug>(coc-rename)
" inoremap <silent><expr> <c-Tab> coc#refresh()
" inoremap <silent> <c-space> <Plug>(coc-float-hide)
" inoremap <silent><expr> <c-space> coc#float#close()


