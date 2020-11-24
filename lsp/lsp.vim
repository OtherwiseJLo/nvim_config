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
"


lua << EOF
local jdtls_attach = function(client)
  print("LSP Started")
  require'completion'.on_attach(client)
  require'lsp-status'.on_attach(client)
end
EOF


if has('nvim-0.5')
  lua jdtls = require('jdtls')
  lua config = {on_attach=jdtls_attach, cmd={'jdtls.sh'}}
  augroup lsp
    au!
    au FileType java lua jdtls.start_or_attach(config)
  augroup end
endif

