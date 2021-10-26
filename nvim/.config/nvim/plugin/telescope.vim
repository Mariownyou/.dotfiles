lua << EOF
require('telescope').setup{
    file_ignore_patterns = {"node_modules", "tags.temp", "tags.lock", "tags"}
}
EOF


nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
