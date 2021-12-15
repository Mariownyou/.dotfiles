lua require("mwny")


nnoremap <Leader>FF :lua require'telescope.builtin'.file_browser{ find_command = {'rg', '--files', '--hidden', '-g'} }<CR>
nnoremap <leader>gf :lua require'mwny.telescope'.git_files()<cr>
nnoremap <leader>gb :lua require'telescope.builtin'.git_branches()<cr>


nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
