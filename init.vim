source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/lsp_config.vim
source $HOME/.config/nvim/tree_sitter_config.vim

let g:python2_host_prog = '/home/jlopez/anaconda3/bin/python'

let g:mapleader="\<Space>"
let g:dashboard_default_executive = 'telescope'
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>


let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c


if has('nvim') || has('termguicolors')
  set termguicolors
endif

colorscheme challenger_deep
let g:challenger_deep_termcolors = 16

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

nnoremap <leader>v <cmd>CHADopen<cr>


" 90 can be any length
" module->expression_statement->call->identifier
" echo nvim_treesitter#statusline(90)  

let g:lightline = {
      \ 'colorscheme': 'challenger_deep',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'nvim_treesitter': 'statusline(90)'
      \ },
      \ }
" nnoremap <C-p> :FZF<CR>
" let g:fzf_action = {
  " \ 'ctrl-t': 'tab split',
  " \ 'ctrl-s': 'split',
  " \ 'ctrl-v': 'vsplit'
  " \}
let g:neoformat_enabled_python = ['black']

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END


" NOTE: This variable doesn't exist before barbar runs. Create it before
"       setting any option.
let bufferline = {}

" Enable/disable animations
let bufferline.animation = v:false

" Enable/disable icons
" if set to "numbers", will show buffer index in the tabline
let bufferline.icons = "numbers"

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters = 
  \ 'asdfjkl;ghnmxcbziowerutyqpASDFJKLGHNMXCBZIOWERUTYQP'

" Sets the maximum padding width with which to surround each tab
let bufferline.maximum_padding = 4


" For built in omnifunc
autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni

" For completion-nvim
augroup completion
  autocmd!
  autocmd BufEnter * lua require'completion'.on_attach()
  autocmd FileType sql let g:completion_trigger_character = ['.', '"']
augroup END

" Source is automatically added, you just need to include it in the chain complete list
let g:completion_chain_complete_list = {
    \   'sql': [
    \    {'complete_items': ['vim-dadbod-completion']},
    \   ],
    \ }
" Make sure `substring` is part of this list. Other items are optional for this completion source
let g:completion_matching_strategy_list = ['exact', 'substring']
" Useful if there's a lot of camel case items
let g:completion_matching_ignore_case = 1

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
