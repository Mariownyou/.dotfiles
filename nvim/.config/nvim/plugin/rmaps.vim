" Shift + Tab
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Mappings to move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Navigation
nnoremap <S-LEFT> :bp<CR>
nnoremap <S-RIGHT> :bN<CR>
nnoremap <S-DOWN> :bd<CR>

" автокомплит через <Ctrl+Space>
inoremap <C-@> <C-x><C-o>   
if has("gui_running")
    inoremap <C-space> <C-x><C-o>
endif

" Esc in terminal mode
tnoremap <Esc> <C-\><C-n>

" Move block left and right
vnoremap <A-l> d2lp
vnoremap <A-h> d2hp 

" greatest remap ever
xnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>


" Esc in insert mode 
inoremap <C-c> <esc>

nnoremap <C-k> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz

" :W ro exit vim
com! W w

nnoremap ^ <C-^>
