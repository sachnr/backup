local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

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
  "sqls"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

require("custom.plugins.java-lsp")
