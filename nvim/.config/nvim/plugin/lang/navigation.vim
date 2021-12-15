nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


nnoremap <leader>fr :lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>m :lua require("harpoon.mark").toggle_file()<cr>
nnoremap <leader>M :lua require("harpoon.mark").rm_file()<cr>
nnoremap <leader>cm :lua require("harpoon.mark").clear_all()<cr>
nnoremap <A-1> :lua require("harpoon.ui").nav_file(1)<cr>
nnoremap <A-2> :lua require("harpoon.ui").nav_file(2)<cr>
nnoremap <A-3> :lua require("harpoon.ui").nav_file(3)<cr>
nnoremap <A-4> :lua require("harpoon.ui").nav_file(4)<cr>
nnoremap <A-5> :lua require("harpoon.ui").nav_file(5)<cr>


" Harpoon settings
lua << EOF
require("harpoon").setup({
    global_settings = {
        save_on_toggle = true,
        save_on_change = true,
        enter_on_sendcmd = false,
        excluded_filetypes = { "harpoon" }
    },
})
EOF
