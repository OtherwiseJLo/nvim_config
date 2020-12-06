lua require('telescope_config')
lua require('telescope').load_extension('dap')
lua require('telescope').load_extension('ghcli')

" virtual text deactivated (default)
let g:dap_virtual_text = 0
" show virtual text for current frame (recommended)
let g:dap_virtual_text = 1
" request variable values for all frames (experimental)
let g:dap_virtual_text = 'all frames'

" noremap <Leader>his <cmd>lua require'telescope.builtin'.command_history(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
" nnoremap <Leader>ref <cmd>lua require'telescope.builtin'.lsp_references(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
" nnoremap <Leader>old <cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
" nnoremap <Leader>fix <cmd>lua require'telescope.builtin'.quickfix(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
" nnoremap <Leader>loc <cmd>lua require'telescope.builtin'.loclist(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
" nnoremap <Leader>ts <cmd> lua require'telescope.builtin'.treesitter(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
" nnoremap <Leader>gt <cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
" nnoremap <Leader>ls <cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>

noremap <Leader>his <cmd>lua require'telescope.builtin'.command_history{}<CR>
nnoremap <Leader>ref <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
nnoremap <Leader>old <cmd>lua require'telescope.builtin'.oldfiles{}<CR>
nnoremap <Leader>fix <cmd>lua require'telescope.builtin'.quickfix{}<CR>
nnoremap <Leader>loc <cmd>lua require'telescope.builtin'.loclist{}<CR>
nnoremap <Leader>ts <cmd> lua require'telescope.builtin'.treesitter{}<CR>
nnoremap <Leader>gt <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <Leader>ls <cmd>lua require'telescope.builtin'.find_files{}<CR>

nnoremap <Leader>/ :lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <Leader>fw :lua require'telescope.builtin'.grep_string(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <Leader>color :lua require'telescope.builtin'.colorscheme(require('telescope.themes').get_dropdown({}))<cr>

nnoremap <Leader>dbc  :lua require'telescope'.extensions.dap.commands{}<cr>
nnoremap <Leader>dbs  :lua require'telescope'.extensions.dap.configurations{}<cr>
nnoremap <Leader>dbb  :lua require'telescope'.extensions.dap.list_breakpoints{}<cr>
nnoremap <Leader>dbv  :lua require'telescope'.extensions.dap.variables{}<cr>

nnoremap <Leader>ghi :lua require('telescope.builtin').gh_issues()<cr>
nnoremap <Leader>ghpr :lua require('telescope.builtin').gh_pull_request()<cr>
nnoremap <Leader>ghist :lua require('telescope.builtin').gh_gist()<cr>
