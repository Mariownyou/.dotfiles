func! CreateFile()
    let filename = input('filename: ')
    :echo filename
    :execute ':e%:h/' . filename 
endfunc

noremap <C-n> :call CreateFile()<CR>
