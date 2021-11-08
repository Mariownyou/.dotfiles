" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gr <Plug>(coc-references)
" nmap <leader>rn <Plug>(coc-rename)
" inoremap <silent><expr> <c-space> coc#refresh()
let g:ycm_autoclose_preview_window_after_completion=1
nmap <silent>gd  :YcmCompleter GoToDefinitionElseDeclaration<CR>

