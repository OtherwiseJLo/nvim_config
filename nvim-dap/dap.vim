" Python debug settings
lua require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
lua require('dap-python').test_runner = 'pytest'
nnoremap <silent> <leader>dn :lua require('dap-python').test_method()<CR>
vnoremap <silent> <leader>ds <ESC>:lua require('dap-python').debug_selection()<CR>
