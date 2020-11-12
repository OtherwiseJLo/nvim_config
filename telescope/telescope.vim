lua <<EOF
-- totally optional to use setup
require('telescope').setup {
  defaults = {
    shorten_path = false -- currently the default value is true
  }
}
EOF


noremap <Leader>his <cmd>lua require'telescope.builtin'.command_history(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
nnoremap <Leader>ref <cmd>lua require'telescope.builtin'.lsp_references(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
nnoremap <Leader>old <cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
nnoremap <Leader>fix <cmd>lua require'telescope.builtin'.quickfix(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
nnoremap <Leader>loc <cmd>lua require'telescope.builtin'.loclist(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
nnoremap <Leader>ts <cmd> lua require'telescope.builtin'.treesitter(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
nnoremap <Leader>gt <cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
nnoremap <Leader>ls <cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
