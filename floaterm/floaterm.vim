let g:floaterm_wintype='floating'
let g:floaterm_gitcommit = 'floaterm'
let g:floaterm_autoclose = 2

let g:floaterm_keymap_new = '<Leader>fn'
let g:floaterm_keymap_toggle = '<Leader>ft'


nnoremap   <Leader>trm  :FloatermNew<CR>
" nnoremap   <Leader>ip  :FloatermNew ipython -i '%:p'<CR>
nnoremap   <Leader>lz  :FloatermNew lazygit<CR>
