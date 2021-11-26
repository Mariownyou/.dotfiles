lua << EOF
require('telescope').setup{
    file_ignore_patterns = {"node_modules", "tags.temp", "tags.lock", "tags"},
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
    },
}
EOF

nnoremap <Leader>FF :lua require'telescope.builtin'.file_browser{ find_command = {'rg', '--files', '--hidden', '-g'} }<CR>
nnoremap <leader>gf :lua require'telescope.builtin'.git_files()<cr>
nnoremap <leader>gb :lua require'telescope.builtin'.git_branches()<cr>


nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
