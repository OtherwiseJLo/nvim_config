source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/lsp/lsp.vim
source $HOME/.config/nvim/treesitter/treesitter.vim
source $HOME/.config/nvim/telescope/telescope.vim
source $HOME/.config/nvim/dadbod/dadbod.vim
" source $HOME/.config/nvim/barbar/barbar.vim
source $HOME/.config/nvim/dashboard/dashboard.vim
source $HOME/.config/nvim/vimwiki/vimwiki.vim
source $HOME/.config/nvim/format/neoformat.vim
source $HOME/.config/nvim/autopair/autopair.vim
source $HOME/.config/nvim/tree/chad.vim
source $HOME/.config/nvim/commenter/commenter.vim
source $HOME/.config/nvim/git/gutter.vim
source $HOME/.config/nvim/git/fugitive.vim
source $HOME/.config/nvim/floaterm/floaterm.vim
source $HOME/.config/nvim/nvim-ipy/ipy.vim
source $HOME/.config/nvim/status/lsp_status.vim
source $HOME/.config/nvim/status/lightline.vim


let g:python2_host_prog = '/home/jlopez/anaconda3/bin/python'
highlight Comment cterm=italic



" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c


if has('nvim') || has('termguicolors')
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NONE
  set t_Co=256
endif

let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 0
let g:sonokai_transparent_background = 0



let g:sonokai_style = 'maia'
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_current_word = 'bold'



colorscheme sonokai



" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing).
call neomake#configure#automake('nrwi', 500)

nmap <leader>pre :Glow<CR>


let g:asyncrun_open = 6

function! s:run_floaterm(opts)
  let cwd = getcwd()
  let cmd = 'cd ' . shellescape(cwd) . ' && ' . a:opts.cmd
  execute 'FloatermNew --title=floaterm_runner --autoclose=0 ' . cmd
  " Back to the normal mode
  " stopinsert
endfunction

let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})
let g:asyncrun_runner.floaterm = function('s:run_floaterm')
let g:asynctasks_term_pos = 'floaterm'
