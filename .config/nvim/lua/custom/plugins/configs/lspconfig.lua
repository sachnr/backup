local utils = require "core.utils"
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentRangeFormattingProvider = false

  utils.load_mappings("lspconfig", { buffer = bufnr })

  if client.server_capabilities.signatureHelpProvider then
    require("nvchad_ui.signature").setup(client)
  end

  if client.name == "jdtls" then
    vim.lsp.codelens.refresh()
    require("jdtls").setup_dap { hotcodereplace = "auto" }
    require("jdtls.dap").setup_dap_main_class_configs()
  end
end

-- nvim jdtls config
require "custom.plugins.configs.nvim-jdtls"

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

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
