local utils = require "core.utils"
local on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentRangeFormattingProvider = false
  vim.lsp.codelens.refresh()
  utils.load_mappings("lspconfig", { buffer = bufnr })
  if client.server_capabilities.signatureHelpProvider then
    require("nvchad_ui.signature").setup(client)
  end
end
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require "lspconfig"

local servers = {
  "html",
  "bashls",
  "jsonls",
  "cssls",
  "clangd",
  "eslint",
  "vuels",
  "pylsp",
  "sqlls",
}

-- nvim jdtls config
require "custom.plugins.configs.nvim-jdtls"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
