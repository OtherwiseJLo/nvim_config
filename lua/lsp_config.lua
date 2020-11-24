local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'


local full_attach = function(client)
  print("LSP Started")
  require'completion'.on_attach(client)
  require'lsp-status'.on_attach(client)
end

lspconfig.gopls.setup{
  on_attach=full_attach;
  root_dir = lspconfig.util.root_pattern('.git');
}
 
lspconfig.texlab.setup{
  on_attach=full_attach;
  name = 'texlab_fancy';
  log_level = vim.lsp.protocol.MessageType.Log;
  message_level = vim.lsp.protocol.MessageType.Log;
  settings = {
    latex = {
      build = {
        onSave = true;
      }
    }
  }
}

-- lspconfig.jdtls.setup{
  -- on_attach = full_attach;
  -- root_dir = lspconfig.util.root_pattern(".git", "build.gradle", "build.gradle.kts", "pom.xml");
-- }

lspconfig.dockerls.setup{on_attach=full_attach}
lspconfig.vimls.setup{on_attach=full_attach}
lspconfig.pyls_ms.setup{on_attach=full_attach}
lspconfig.clangd.setup{on_attach=full_attach}
lspconfig.clangd.setup{on_attach=full_attach}
lspconfig.julials.setup{on_attach=full_attach}
lspconfig.metals.setup{on_attach=full_attach}
lspconfig.leanls.setup{on_attach=full_attach}
lspconfig.yamlls.setup{on_attach=full_attach}
lspconfig.sqlls.setup{on_attach=full_attach}


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
