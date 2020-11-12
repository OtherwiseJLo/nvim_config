lua << EOF
require'nvim_lsp'.pyls.setup{}
EOF

set completeopt-=preview

set completeopt=menuone,noinsert,noselect
lua << EOF
local on_attach_vim = function(client)
  require'completion'.on_attach(client)
  require'diagnostic'.on_attach(client)
  require'lsp-status'.on_attach(client)
end
require'nvim_lsp'.dockerls.setup{on_attach=on_attach_vim}
require'nvim_lsp'.vimls.setup{on_attach=on_attach_vim}
require'nvim_lsp'.pyls.setup{on_attach=on_attach_vim}
require'nvim_lsp'.clangd.setup{on_attach=on_attach_vim}
require'nvim_lsp'.clangd.setup{on_attach=on_attach_vim}
require'nvim_lsp'.gopls.setup{on_attach=on_attach_vim}
require'nvim_lsp'.jdtls.setup{on_attach=on_attach_vim}
require'nvim_lsp'.julials.setup{on_attach=on_attach_vim}
require'nvim_lsp'.metals.setup{on_attach=on_attach_vim}
require'nvim_lsp'.leanls.setup{on_attach=on_attach_vim}
require'nvim_lsp'.yamlls.setup{on_attach=on_attach_vim}
require'nvim_lsp'.sqlls.setup{on_attach=on_attach_vim}
EOF


" Statusline
function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif

  return ''
endfunction

let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_enable_underline = 0
let g:diagnostic_auto_popup_while_jump = 1
let g:diagnostic_insert_delay = 1

" LSPUtils
lua <<EOF
vim.lsp.callbacks['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
vim.lsp.callbacks['textDocument/references'] = require'lsputil.locations'.references_handler
vim.lsp.callbacks['textDocument/definition'] = require'lsputil.locations'.definition_handler
vim.lsp.callbacks['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
vim.lsp.callbacks['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
vim.lsp.callbacks['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
vim.lsp.callbacks['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
vim.lsp.callbacks['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
EOF
