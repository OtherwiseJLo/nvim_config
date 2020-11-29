local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
local lsp_status = require'lsp-status'
lsp_status.register_progress()


local full_attach = function(client)
  print("LSP Started")
  require'completion'.on_attach(client)
  require'lsp-status'.on_attach(client)
  lsp_status.on_attach(client)
end

lspconfig.gopls.setup{
  on_attach=full_attach;
  root_dir = lspconfig.util.root_pattern('.git');
}
 
-- lspconfig.jdtls.setup{
  -- on_attach = full_attach;
  -- root_dir = lspconfig.util.root_pattern(".git", "build.gradle", "build.gradle.kts", "pom.xml");
-- }
lspconfig.clangd.setup{
  handlers = lsp_status.extensions.clangd.setup(),
  init_options = {
    clangdFileStatus = true
  },
  on_attach=full_attach,
  capabilities = lsp_status.capabilities
}

lspconfig.dockerls.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.vimls.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.pyls_ms.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.julials.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.metals.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.leanls.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.yamlls.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.sqlls.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.bashls.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.html.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.jsonls.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.sumneko_lua.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.tsserver.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.texlab.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.ocamllsp.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
lspconfig.rust_analyzer.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}
-- lspconfig.kotlin_language_server.setup{on_attach=full_attach, capabilities = lsp_status.capabilities}





vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- Enable underline, use default values
    underline = true,
    -- Enable virtual text, override spacing to 4
    virtual_text = {
      spacing = 4,
      prefix = '~',
    },
    -- Use a function to dynamically turn signs off
    -- and on, using buffer local variables
    signs = function(bufnr, client_id)
      local ok, result = pcall(vim.api.nvim_buf_get_var, bufnr, 'show_signs')
      -- No buffer local variable set, so just enable by default
      if not ok then
        return true
      end

      return result
    end,
    -- Disable a feature
    update_in_insert = true,
  }
)
