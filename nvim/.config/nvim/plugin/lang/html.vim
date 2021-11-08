au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2



function s:CompleteTags()
  inoremap <buffer> > ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR>
  inoremap <buffer> ><Leader> >
  inoremap <buffer> ><CR> ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR><CR><Tab><CR><Up><C-O>$
endfunction
autocmd BufRead,BufNewFile *.html,*.js,*.xml call s:CompleteTags()

func! RunFileHTML()
    " Check if window exists
    let windows = split(execute('!tmux list-windows'), '\r' )
    :echo windows
    " :! tmux new-window -n server
endfunc


let g:user_emmet_leader_key=','
autocmd FileType html noremap <leader>rf :call RunFileHTML()<CR>
