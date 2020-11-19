local lsp_status = require('lsp-status')
lsp_status.register_progress()

local nvim_lsp = require('lspconfig')

-- Some arbitrary servers
nvim_lsp.clangd.setup({
  handlers = lsp_status.extensions.clangd.setup(),
  init_options = {
    clangdFileStatus = true
  },
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

nvim_lsp.ghcide.setup({
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

nvim_lsp.vimls.setup({
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

nvim_lsp.sqlls.setup({
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})


nvim_lsp.julials.setup({
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

nvim_lsp.leanls.setup({
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

nvim_lsp.gopls.setup({
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

nvim_lsp.jdtls.setup({
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

