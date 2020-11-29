lua <<EOF
require('telescope').setup {
  defaults = {
    prompt_prefix = ' >',

    winblend = 0,
    preview_cutoff = 120,

    scroll_strategy = 'cycle',
    layout_strategy = 'horizontal',
    layout_defaults = {
      horizontal = {
        width_padding = 0.1,
        height_padding = 0.1,
        preview_width = 0.6,
      },
      vertical = {
        width_padding = 0.05,
        height_padding = 1,
        preview_height = 0.5,
      }
    },

    sorting_strategy = "descending",
    prompt_position = "bottom",

    borderchars = {
      { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
      preview = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    },

  }
}
EOF


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

