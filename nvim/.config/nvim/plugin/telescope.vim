lua << EOF
require('telescope').setup{
    file_ignore_patterns = {"node_modules", "tags.temp", "tags.lock", "tags"}
}
EOF

nnoremap <Leader>FF :lua require'telescope.builtin'.file_browser{ find_command = {'rg', '--files', '--hidden', '-g'} }<CR>

nnoremap <Leader>ft :lua require('telescope').extensions.git_worktree.git_worktrees()<cr>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
