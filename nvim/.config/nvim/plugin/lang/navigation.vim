nnoremap <C-d> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


nnoremap <leader>fr :lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>m :lua require("harpoon.mark").toggle_file()<cr>
nnoremap <leader>M :lua require("harpoon.mark").rm_file()<cr>
nnoremap <A-1> :lua require("harpoon.ui").nav_file(1)<cr>
nnoremap <A-2> :lua require("harpoon.ui").nav_file(2)<cr>
nnoremap <A-3> :lua require("harpoon.ui").nav_file(3)<cr>
nnoremap <A-4> :lua require("harpoon.ui").nav_file(4)<cr>
nnoremap <A-5> :lua require("harpoon.ui").nav_file(5)<cr>
