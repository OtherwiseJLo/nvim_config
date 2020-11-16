source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/lsp/lsp.vim
source $HOME/.config/nvim/treesitter/treesitter.vim
source $HOME/.config/nvim/telescope/telescope.vim
source $HOME/.config/nvim/dadbod/dadbod.vim
source $HOME/.config/nvim/barbar/barbar.vim
source $HOME/.config/nvim/dashboard/dashboard.vim
source $HOME/.config/nvim/vimwiki/vimwiki.vim
source $HOME/.config/nvim/format/neoformat.vim
source $HOME/.config/nvim/status/lightline.vim

let g:python2_host_prog = '/home/jlopez/anaconda3/bin/python'



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


" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing).
call neomake#configure#automake('nrwi', 500)
