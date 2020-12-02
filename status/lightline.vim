" 90 can be any length
" module->expression_statement->call->identifier
" echo nvim_treesitter#statusline(90)  

set laststatus=2

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
