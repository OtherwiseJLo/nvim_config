lua require('lsp_config')

set completeopt-=preview

set completeopt=menuone,noinsert,noselect

" Statusline
function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif

  return ''
endfunction

" let g:diagnostic_enable_virtual_text = 1
" let g:diagnostic_enable_underline = 0
" let g:diagnostic_auto_popup_while_jump = 1
" let g:diagnostic_insert_delay = 1
